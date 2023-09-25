import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/controllers/add_vehicle_controller.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_App_bar.dart';
import 'package:task_manar_app/shared/custom_button.dart';
import 'package:task_manar_app/shared/custom_text.dart';
import 'package:task_manar_app/shared/custom_text_field.dart';
import 'package:task_manar_app/shared/space_widgets.dart';

class AddVehiclesView extends StatelessWidget {
  const AddVehiclesView({super.key});

  @override
  Widget build(BuildContext context) {
    final AddVehicleController controller = Get.put(AddVehicleController());
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2.3,
            vertical: SizeConfig.defaultSize * 0.1,
          ),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const CustomAppBar(title: 'Add Vehicles'),
                const VerticalSpace(2),
                CustomTextField(
                  disableFocusNode: true,
                  controller: controller.typeController,
                  hintText: 'The type of the vehicle',
                  prefixIcon: SvgPicture.asset(
                    'assets/svg/type.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  suffixIcon: SvgPicture.asset(
                    'assets/svg/arrow.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  onTap: () {
                    log('message');
                    Get.defaultDialog(
                        title: 'Select Type',
                        content: Column(
                          children: List.generate(
                              controller.type.length,
                              (index) => InkWell(
                                    onTap: () {
                                      controller.typeController.text =
                                          controller.type[index]['type']
                                              .toString();
                                      controller.idType =
                                          controller.type[index]['id'];
                                      Get.back();
                                      print(controller.idType);
                                    },
                                    child: Column(
                                      children: [
                                        const Divider(),
                                        Text(
                                            '${controller.type[index]['type']}'),
                                        const Divider()
                                      ],
                                    ),
                                  )),
                        ));
                  },
                ),
                const VerticalSpace(1),
                CustomTextField(
                  hintText: 'Model',
                  controller: controller.modelController,
                  keyboardType: TextInputType.text,
                  prefixIcon: SvgPicture.asset(
                    'assets/svg/model.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const VerticalSpace(1),
                CustomTextField(
                  disableFocusNode: true,
                  hintText: 'Vehicle color',
                  controller: controller.colorController,
                  prefixIcon: SvgPicture.asset(
                    'assets/svg/color.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  suffixIcon: SvgPicture.asset(
                    'assets/svg/arrow.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  onTap: () {
                    log('message');
                    Get.defaultDialog(
                        title: 'Select Color',
                        content: Column(
                          children: List.generate(
                              controller.colors.length,
                              (index) => InkWell(
                                    onTap: () {
                                      controller.colorController.text =
                                          controller.colors[index].toString();
                                      Get.back();
                                      print(controller.colorController.text);
                                    },
                                    child: Column(
                                      children: [
                                        const Divider(),
                                        Text(controller.colors[index]),
                                        const Divider()
                                      ],
                                    ),
                                  )),
                        ));
                  },
                ),
                const VerticalSpace(1),
                CustomTextField(
                  hintText: 'Plate Number',
                  keyboardType: TextInputType.number,
                  controller: controller.plateNumberController,
                  prefixIcon: SvgPicture.asset(
                    'assets/svg/number.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const VerticalSpace(2),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    'Vehicle photos',
                    fontSize: 3,
                    fontWeight: FontWeight.w500,
                    color: AppColors.color2,
                  ),
                ),
                const VerticalSpace(2),
                AddImage(text: '1-Mechanics picture', onTap: () {}),
                const VerticalSpace(1),
                AddImage(text: '2-Image of the vehicle', onTap: () {}),
                const VerticalSpace(1),
                AddImage(text: '3-Picture of the painting', onTap: () {}),
                const VerticalSpace(1),
                AddImage(text: '4-Personal identity', onTap: () {}),
                const VerticalSpace(1),
                AddImage(text: '5-Agency or delegation', onTap: () {}),
                const VerticalSpace(2.5),
                Container(
                  height: SizeConfig.defaultSize * 14,
                  color: Colors.red,
                ),
                const VerticalSpace(2.5),
                CustomButton(
                  text: 'Add Vehicle',
                  onTap: () {
                    if (controller.formKey.currentState!.validate()) {}
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class AddImage extends StatelessWidget {
  const AddImage({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomText(
            text,
            fontSize: 2,
            fontWeight: FontWeight.w500,
            color: AppColors.color2,
          ),
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: Icon(
              Icons.add,
              size: SizeConfig.defaultSize * 2.5,
              color: AppColors.color1,
            ),
          )
        ],
      ),
    );
  }
}
