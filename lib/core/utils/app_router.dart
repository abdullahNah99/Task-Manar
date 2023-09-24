import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:task_manar_app/views/login_view/login_view.dart';
import 'package:task_manar_app/views/register_view/add_image_view.dart';
import 'package:task_manar_app/views/register_view/register_view.dart';

abstract class AppRouter {
  static String loginRout = '/';
  static String registerRout = '/register';
  static String addImageViewBody = '/AddImageViewBody';
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: loginRout,
      page: () => const LoginView(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: registerRout,
      page: () => const RegisterView(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: addImageViewBody,
      page: () => const AddImageView(),
      transition: Transition.leftToRight,
    )
  ];
}
