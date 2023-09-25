import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/core/functions/custom_progress_indicator.dart';

import 'package:task_manar_app/models/add_vehicle_model.dart';
import 'package:task_manar_app/services/add_vehcle_services.dart';

class AddVehicleController extends GetxController {
  AddVehicleModel? vehicleModel;
  final formKey = GlobalKey<FormState>();
  String? idType;
  final typeController = TextEditingController();
  final modelController = TextEditingController();
  final colorController = TextEditingController();
  final plateNumberController = TextEditingController();

  Future<void> addVehicle({
    required String vehicleTypeId,
    required String boardNumber,
    required String model,
    required String color,
    required String vehicleImage,
    required String boardImage,
    required String idImage,
    required String mechanicImage,
    required String delegateImage,
    required String token,
  }) async {
    CustomProgressIndicator.showProgressIndicator(Get.context!);
    (await AddVehicleServices.addVehicle(
      vehicleTypeId: vehicleTypeId,
      boardNumber: boardNumber,
      model: model,
      color: color,
      vehicleImage: vehicleImage,
      boardImage: boardImage,
      idImage: idImage,
      mechanicImage: mechanicImage,
      delegateImage: delegateImage,
      token: token,
    ))
        .fold(
      (failure) {
        Get.back();
        Get.snackbar(
          'Error:',
          failure.failureMsg,
          backgroundColor: Colors.red,
        );
      },
      (vehicleModel) {
        this.vehicleModel = vehicleModel;
        Get.back();
      },
    );
  }

  List<Map<String, String>> type = [
    {'id': '1', 'type': 'A'},
    {'id': '2', 'type': 'B'},
    {'id': '3', 'type': 'C'},
    {'id': '4', 'type': 'D'},
  ];

  List<String> colors = ['red', 'blu', 'black'];
}
