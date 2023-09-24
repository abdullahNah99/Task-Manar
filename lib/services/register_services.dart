import 'package:dartz/dartz.dart';
import 'package:task_manar_app/core/constants/end_points.dart';
import 'package:task_manar_app/core/utils/http_api_services.dart';
import 'package:task_manar_app/models/auth_model.dart';

abstract class RegisterServices {
  static Future<Either<void, AuthModel>> register({
    required String fullName,
    required String phoneNumber,
    required String password,
    required String passwordConfirmation,
    required String image,
  }) async {
    try {
      var response = await ApiServices.post(
        endPoint: AppEndPoints.register,
        body: {
          'fullname': fullName,
          'phone_number': phoneNumber,
          'password': password,
          'password_confirmation': passwordConfirmation,
          'image': image
        },
      );
      return right(AuthModel.fromJson(response));
    } catch (ex) {
      return left(null);
    }
  }
}
