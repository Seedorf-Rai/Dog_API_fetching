import 'package:dog_api_fetching/controller/dog_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DOgController);
  }
}
