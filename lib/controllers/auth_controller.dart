import 'package:get/get.dart';
import 'package:ride_hailing_app/controllers/authApis/auth_apis.dart';
import 'package:ride_hailing_app/controllers/utils/snackbar.dart';

class AuthController extends GetxController {
  RxBool signUpLoading = false.obs;
  RxBool loginLoading = false.obs;

  Future<bool> signUpUserController({
    required String email,
    required String firstName,
    required String lastName,
    required String userEmail,
    required String password,
    required String confirmPassword,
    required String phoneNumber,
  }) async {
    try {
      signUpLoading.value = true;
      var userSigup = await AuthApis().userSignupMethod(
        email: email,
        confirmPassword: confirmPassword,
        firstName: firstName,
        lastName: lastName,
        password: password,
        phoneNumber: phoneNumber,
      );
      if (userSigup) {
        print('controller signup done');
        signUpLoading.value = false;

        return true;
      }
      signUpLoading.value = false;

      return false;
    } catch (e) {
      showErrorSnackbar("unexpected error occurred :${e.toString()}");
      signUpLoading.value = false;
      return false;
    }
  }

  Future<bool> loginController({required String email, required String password}) async {
    try {
      loginLoading.value = true;
      bool userSigup = await AuthApis().loginMethod(password: password, email: email);

      if (userSigup) {
        print('controller login done');
        loginLoading.value = false;

        return true;
      }
      loginLoading.value = false;

      return false;
    } catch (e) {
      showErrorSnackbar("unexpected error occurred :${e.toString()}");
      loginLoading.value = false;
      return false;
    }
  }
}
