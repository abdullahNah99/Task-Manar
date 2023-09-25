import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/controllers/my_vehicle_controller.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/hanling_data_view.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_button.dart';
import 'package:task_manar_app/shared/custom_text.dart';
import 'package:task_manar_app/shared/space_widgets.dart';
import 'package:task_manar_app/views/my_vehicles_view/my_vehicle_item.dart';

class MyVehiclesView extends StatelessWidget {
  const MyVehiclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyVehiclesViewBody(),
    );
  }
}

class MyVehiclesViewBody extends StatelessWidget {
  const MyVehiclesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyVehicleController());
    return GetBuilder<MyVehicleController>(
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize * 5),
                height: SizeConfig.defaultSize * 10,
                child: Row(
                  children: [
                    const HorizintalSpace(1),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: SizeConfig.defaultSize * 4,
                          height: SizeConfig.defaultSize * 4,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: SizeConfig.defaultSize * 2.5,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                    CustomText(
                      'My Vehicles',
                      fontWeight: FontWeight.w400,
                      color: AppColors.color2,
                      fontSize: 2.5,
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .75,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * 4.5,
                    right: SizeConfig.defaultSize * 4.5,
                    top: SizeConfig.defaultSize * 5,
                    bottom: SizeConfig.defaultSize,
                  ),
                  itemBuilder: (context, index) => MyVehicleItem(
                    index: index,
                    myVehicleModel: controller.myVehicleModel!,
                  ),
                  separatorBuilder: (context, index) => const VerticalSpace(1),
                  itemCount: controller.myVehicleModel!.data!.length,
                ),
              ),
              const Expanded(child: VerticalSpace(1)),
              CustomButton(
                text: 'Add Vehicle',
                onTap: () {},
              ),
              const VerticalSpace(2),
            ],
          ),
        );
      },
    );
  }
}
