import 'package:dog_api_fetching/model/dog_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  static var client = http.Client();

//Fetching Data From Internet
  static Future<List<DogModel>?> fetchDogList() async {
    try {
      var response =
          await client.get(Uri.parse("https://api.thedogapi.com/v1/breeds"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return dogModelFromJson(jsonString);
      }
      else{
        return null;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    }
  }
}
