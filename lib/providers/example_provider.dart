part of 'providers.dart';

class ExampleProvider extends ChangeNotifier {
  ExampleModel? tempExample;
  ExampleModel? get example => tempExample;

  Future<void> setUser(ExampleModel? example) async {
    tempExample = example;
    notifyListeners();
  }
}
