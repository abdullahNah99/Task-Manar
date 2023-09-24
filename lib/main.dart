import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manar_app/core/styles/app_colors.dart';
import 'package:task_manar_app/core/utils/cache_helper.dart';
import 'package:task_manar_app/core/utils/size_config.dart';
import 'package:task_manar_app/views/register_view/add_image_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: AppColors.getMaterialColor(AppColors.color1),
      ),
      debugShowCheckedModeBanner: false,
      home: const AddImageView(),
    );
  }
}
