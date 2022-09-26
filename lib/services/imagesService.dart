import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tasks/models/images.dart';

class ImageService {
  static var client = http.Client();
  static String baseUrl = "https://zoo-animal-api.herokuapp.com/animals/rand/10";
  static Future<List<ImagesModel>> fetchData() async {
    var response = await client.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      // var jsonResponse = response.body;
      // print(response.body);
      final items = jsonDecode(response.body);
      List<ImagesModel> images = items.map<ImagesModel>((json) {
        return ImagesModel.fromJson(json);
      }).toList();
      // List<images> images = items.forEach((item) {
      //   return images.fromJson(item);
      // });
      return images;
    } else {
      print("Failed to load data");
      return [];
    }
  }
}