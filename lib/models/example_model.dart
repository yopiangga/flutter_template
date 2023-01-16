part of 'models.dart';

class ExampleModel {
  int id;

  ExampleModel({
    required this.id,
  });

  factory ExampleModel.fromJson(Map<String, dynamic> json) {
    ExampleModel data = ExampleModel(
      id: json["id"],
    );

    return data;
  }
}
