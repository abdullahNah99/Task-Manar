import 'package:get/get.dart';
import 'package:task_manar_app/models/login_model.dart';
import 'package:task_manar_app/services/login_service.dart';

class LoginController extends GetxController {
  LoginModel? loginModel;

  Future<void> login({
    required String number,
    required String password,
  }) async {
    (await LoginService.login(
      number: number,
      password: password,
    ))
        .fold(
      (failure) => null,
      (loginModel) => this.loginModel = loginModel,
    );
  }
}
