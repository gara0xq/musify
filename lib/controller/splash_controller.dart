import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed('/get_started'),
    );
    super.onInit();
  }
}
