import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/app_router.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_App_bar.dart';
import 'package:task_manar_app/shared/custom_button.dart';
import 'package:task_manar_app/shared/custom_text.dart';
import 'package:task_manar_app/shared/space_widgets.dart';
import 'package:task_manar_app/views/my_vehicles_view/my_vehicle_item.dart';

class MyVehiclesView extends StatelessWidget {
  const MyVehiclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyVehiclesViewBody(),
      ),
    );
  }
}

class MyVehiclesViewBody extends StatelessWidget {
  const MyVehiclesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'My Vehicles'),
        SizedBox(
          height: SizeConfig.screenHeight * .75,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * 4.5,
              right: SizeConfig.defaultSize * 4.5,
              top: SizeConfig.defaultSize * 3,
              bottom: SizeConfig.defaultSize,
            ),
            itemBuilder: (context, index) => MyVehicleItem(index: index),
            separatorBuilder: (context, index) => const VerticalSpace(1),
            itemCount: 10,
          ),
        ),
        const Expanded(child: VerticalSpace(1)),
        CustomButton(
          text: 'Add Vehicle',
          onTap: () {
            Get.toNamed(AppRouter.addVehiclesView);
          },
        ),
        const VerticalSpace(2),
      ],
    );
  }
}
