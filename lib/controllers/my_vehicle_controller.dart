import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/core/functions/custom_progress_indicator.dart';
import 'package:task_manar_app/core/utils/cache_helper.dart';
import 'package:task_manar_app/core/utils/status_request.dart';
import 'package:task_manar_app/models/my_vehicle_model.dart';
import 'package:task_manar_app/services/my_vehicle_services.dart';

class MyVehicleController extends GetxController {
  MyVehicleModel? myVehicleModel;
  StatusRequest statusRequest = StatusRequest.none;

  Future<void> getVehicle({required String token}) async {
    log('xxxxxxxxxxx');
    // CustomProgressIndicator.showProgressIndicator(Get.context!);
    statusRequest = StatusRequest.loading;
    update();
    (await MyVehicleServices.getVehicle(token: token)).fold(
      (failure) {
        statusRequest = StatusRequest.failure;
        // Get.back();

        // Get.snackbar(
        //   'Error:',
        //   failure.failureMsg,
        //   backgroundColor: Colors.red,
        // );
      },
      (myVehicleModel) {
        this.myVehicleModel = myVehicleModel;
        statusRequest = StatusRequest.success;
        // Get.back();
        // update();
      },
    );
    update();
  }

  @override
  void onInit() {
    getVehicle(token: CacheHelper.getData(key: 'Token'));
    super.onInit();
  }
}
