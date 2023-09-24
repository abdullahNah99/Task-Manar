import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_manar_app/models/auth_model.dart';
import 'package:task_manar_app/services/register_services.dart';

class RegisterController extends GetxController {
  AuthModel? registerModel;
  XFile? imageFile;
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool obscureText = true;
  bool obscureText1 = true;

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
  }

  void showHidePassword() {
    obscureText = !obscureText;
    update();
  }

  void showHidePassword1() {
    obscureText1 = !obscureText1;
    update();
  }
}
