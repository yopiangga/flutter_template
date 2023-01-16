part of 'widgets.dart';

AppBar AppBarWidget({action, context}) {
  return (AppBar(
    automaticallyImplyLeading: false,
    title: Container(
        height: 30,
        child: Text("My App",
            style: mainTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.w600))),
    shadowColor: Color(0xFF023047).withOpacity(0.1),
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: Color(0xFF023047),
    elevation: 8,
    actions: [
      Container(
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: accentColor[4],
          ),
          child: Stack(children: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Color(0xFF023047),
              ),
              onPressed: () {},
            ),
          ])),
      SizedBox(
        width: 10,
      ),
    ],
  ));
}
