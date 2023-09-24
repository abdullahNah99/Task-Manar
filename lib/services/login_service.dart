import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:task_manar_app/core/errors/failures.dart';
import 'package:task_manar_app/models/auth_model.dart';
import '../core/constants/end_points.dart';
import '../core/utils/http_api_services.dart';

abstract class LoginService {
  static Future<Either<Failure, AuthModel>> login({
    required String number,
    required String password,
  }) async {
    try {
      var response = await ApiServices.post(
          endPoint: AppEndPoints.login,
          body: {'phone_number': number, 'password': password});
      return right(AuthModel.fromJson(response));
    } catch (ex) {
      var helper = json.decode(ex.toString().split('Exception:')[1]);
      // log(helper.toString());
      // log(ex.toString().split('Exception:')[1]);
      if (helper['status'] != 'error') {
        return left(Failure(failureMsg: helper['message']));
      } else {
        return left(
          Failure(
            failureMsg: helper['message']['phone_number'][0],
          ),
        );
      }
    }
  }
}
