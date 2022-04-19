import 'package:dog_api_fetching/model/dog_model.dart';
import 'package:dog_api_fetching/remote_service/remote_service.dart';
import 'package:get/get.dart';

class DOgController extends GetxController {
  var dogList = <DogModel>[].obs;
  var isLoading = true.obs;

  Future getDogList() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchDogList();
      if (data != null) {
        dogList.value = data;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getDogList();
  }
}
