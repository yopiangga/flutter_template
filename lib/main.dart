import 'package:flutter/material.dart';
import 'package:flutter_template/ui/pages/pages.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';
import 'providers/providers.dart';
import 'shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExampleProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        theme: ThemeData(
          splashColor: Colors.white,
        ),
        home: FutureBuilder(
          future: Init.instance.getToken(),
          builder: (BuildContext context, AsyncSnapshot<ExampleModel?> data) {
            if (data.connectionState == ConnectionState.waiting) {
              return Splash();
            } else {
              return MainPage();
            }

            // if (data.data == null) {
            //   return LoginPage();
            // } else {
            //   return MainPage(user: data.data);
            // }
          },
        ),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  bool error;
  Splash({this.error = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Center(child: Image.asset('assets/images/user.png'))),
            error == true
                ? Text("Koneksi internet terputus",
                    style: whiteTextFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold))
                : SizedBox()
          ],
        ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(const Duration(seconds: 0));
  }

  Future<ExampleModel?> getToken() async {
    return ExampleModel(id: 1);
  }
}
