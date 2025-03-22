import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isObscure = true.obs;

  void toggleObscure() {
    isObscure.value = !isObscure.value;
  }
}
