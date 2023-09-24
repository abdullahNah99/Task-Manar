import 'package:get/get.dart';
import 'package:task_manar_app/models/auth_model.dart';
import 'package:task_manar_app/services/register_services.dart';

class RegisterController extends GetxController {
  AuthModel? registerModel;

  Future<void> register({
    required String fullName,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
    required String image,
  }) async {
    (await RegisterServices.register(
      fullName: fullName,
      phoneNumber: phoneNumber,
      password: password,
      passwordConfirmation: passwordConfirmation,
      image: image,
    ))
        .fold(
      (failure) => null,
      (registerModel) => this.registerModel = registerModel,
    );
  }
}
