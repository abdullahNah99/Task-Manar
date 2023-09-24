import 'package:flutter/material.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_image.dart';
import 'package:task_manar_app/shared/custom_text.dart';

class MyVehicleItem extends StatelessWidget {
  final int index;
  const MyVehicleItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
            width: SizeConfig.defaultSize * 35,
            height: SizeConfig.defaultSize * 21,
            decoration: BoxDecoration(
              boxShadow: const [],
              border: Border.all(
                color:
                    index == 0 ? AppColors.color1 : Colors.grey.withOpacity(.2),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImage(
                      circleShape: true,
                      width: SizeConfig.defaultSize * 6,
                      height: SizeConfig.defaultSize * 6,
                      iconSize: SizeConfig.defaultSize * 5,
                      color: Colors.grey,
                    ),
                    const Spacer(flex: 2),
                    CustomText(
                      'Audi 2020',
                      fontWeight: FontWeight.w500,
                      color: index == 0 ? AppColors.color1 : AppColors.color2,
                      fontSize: 1.6,
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      'Kilo Price:',
                      fontWeight: FontWeight.w500,
                      color: index == 0 ? AppColors.color1 : AppColors.color2,
                      fontSize: 1.6,
                    ),
                    CustomText(
                      '1km/ 50 s.p',
                      fontWeight: FontWeight.w500,
                      color: index == 0 ? AppColors.color1 : AppColors.color2,
                      fontSize: 1.6,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      "profit percentage:",
                      fontWeight: FontWeight.w500,
                      color: index == 0 ? AppColors.color1 : AppColors.color2,
                      fontSize: 1.6,
                    ),
                    CustomText(
                      '1km/ 50 s.p',
                      fontWeight: FontWeight.w500,
                      color: index == 0 ? AppColors.color1 : AppColors.color2,
                      fontSize: 1.6,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ],
    );
  }
}
