import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_manar_app/models/auth_model.dart';
import 'package:task_manar_app/services/register_services.dart';

class RegisterController extends GetxController {
  AuthModel? registerModel;
  XFile? imageFile;

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

  Future<void> selectImage() async {
    final ImagePicker picker = ImagePicker();
    imageFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    update();
  }
}
