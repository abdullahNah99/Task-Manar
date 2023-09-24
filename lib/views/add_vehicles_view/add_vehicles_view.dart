import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_App_bar.dart';
import 'package:task_manar_app/shared/custom_text.dart';
import 'package:task_manar_app/shared/custom_text_field.dart';
import 'package:task_manar_app/shared/space_widgets.dart';

class AddVehiclesView extends StatelessWidget {
  const AddVehiclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultSize * 2.3,
            vertical: SizeConfig.defaultSize * 0.1,
          ),
          child: Column(
            children: [
              CustomAppBar(title: 'Add Vehicles'),
              const VerticalSpace(3),
              CustomTextField(
                disableFocusNode: true,
                hintText: 'The type of the vehicle',
                prefixIcon: SvgPicture.asset(
                  'assets/svg/type.svg',
                  fit: BoxFit.scaleDown,
                ),
                suffixIcon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColors.color2,
                  // controller: controller.phoneController,
                ),
                onTap: () {
                  log('message');
                  Get.defaultDialog();
                },
              ),
              const VerticalSpace(3),
              CustomTextField(
                hintText: 'Model',
                keyboardType: TextInputType.text,
                prefixIcon: SvgPicture.asset(
                  'assets/svg/model.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              const VerticalSpace(3),
              CustomTextField(
                disableFocusNode: true,
                hintText: 'Vehicle color',
                prefixIcon: SvgPicture.asset(
                  'assets/svg/color.svg',
                  fit: BoxFit.scaleDown,
                ),
                suffixIcon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: AppColors.color2,
                  // controller: controller.phoneController,
                ),
              ),
              const VerticalSpace(3),
              CustomTextField(
                hintText: 'Plate Number',
                keyboardType: TextInputType.number,
                prefixIcon: SvgPicture.asset(
                  'assets/svg/number.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              const VerticalSpace(3),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  'Vehicle photos',
                  fontSize: 3,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
              const VerticalSpace(3),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  '1-Mechanics picture',
                  fontSize: 2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
              const VerticalSpace(1),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  '2-Image of the vehicle',
                  fontSize: 2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
              const VerticalSpace(1),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  '3-Picture of the painting',
                  fontSize: 2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
              const VerticalSpace(1),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  '4-Personal identity',
                  fontSize: 2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
              const VerticalSpace(1),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  '5-Agency or delegation',
                  fontSize: 2,
                  fontWeight: FontWeight.w500,
                  color: AppColors.color2,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
