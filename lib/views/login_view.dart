import 'package:flutter/material.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/shared/custom_button.dart';
import 'package:task_manar_app/shared/custom_text.dart';
import 'package:task_manar_app/shared/custom_text_field.dart';
import 'package:task_manar_app/shared/space_widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2.3),
      child: Column(
        children: [
          const VerticalSpace(22),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              'Login',
              fontSize: 3.3,
              fontWeight: FontWeight.w700,
              color: AppColors.color2,
            ),
          ),
          const VerticalSpace(5),
          CustomTextField(
            hintText: 'Phone Number',
            prefixIcon: Icon(
              Icons.phone,
              color: AppColors.color1,
            ),
          ),
          const VerticalSpace(4),
          CustomTextField(
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock,
              color: AppColors.color1,
            ),
            suffixIcon: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {},
              child: const Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            ),
          ),
          const VerticalSpace(1),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(15),
              child: CustomText(
                'Forget Password?',
                fontSize: 1.7,
                fontWeight: FontWeight.w700,
                color: AppColors.color2,
              ),
            ),
          ),
          const VerticalSpace(8),
          CustomButton(
            text: 'Login',
            color: AppColors.color2,
          ),
          const VerticalSpace(1.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                "Don't have an account?",
                fontWeight: FontWeight.w700,
                color: AppColors.color2,
                fontSize: 1.4,
              ),
              const HorizintalSpace(1),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(15),
                child: CustomText(
                  'Create one',
                  color: AppColors.color1,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  fontSize: 1.4,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
