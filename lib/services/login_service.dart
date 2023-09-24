import 'package:dartz/dartz.dart';
import 'package:task_manar_app/models/login_model.dart';

import '../core/constants/end_points.dart';
import '../core/utils/http_api_services.dart';

abstract class LoginService {
  static Future<Either<void, LoginModel>> login({
    required String number,
    required String password,
  }) async {
    try {
      var response = await ApiServices.post(
          endPoint: AppEndPoints.login,
          body: {'phone_number': number, 'password': password});
      return right(LoginModel.fromJson(response));
    } catch (er) {
      return left(null);
    }
  }
}
