part of 'services.dart';

class ExampleServices {
  String? token;

  ExampleServices({required this.token});

  Future<ExampleModel?> getExample({http.Client? client}) async {
    String url = baseUrl + "/api/user";

    client ??= http.Client();

    var response = await client.get(Uri.parse(url), headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    });

    ExampleModel? temp;

    if (response.statusCode != 200) {
      return temp;
    }

    var data = json.decode(response.body);

    temp = ExampleModel.fromJson(data);
    return temp;
  }

  Future<http.Response> editExample({required String name}) async {
    String url = baseUrl + "/api/user";

    return http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "Authorization": "Bearer $token",
      },
      body: jsonEncode(<String, String>{
        'name': name,
      }),
    );
  }

  Future<dynamic> editExamplePhoto(
      {required Uint8List image,
      String? token,
      required String filename}) async {
    String url = baseUrl + "/api/user/profile-photo";

    var request = http.MultipartRequest("POST", Uri.parse(url));

    var temp = http.MultipartFile.fromBytes('profile_photo', image,
        filename: filename);

    request.files.add(temp);

    request.headers.addAll({
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    });

    var response = await request.send();
    // print(response.statusCode);
    // print(await response.stream.bytesToString());
    return response;
  }
}
