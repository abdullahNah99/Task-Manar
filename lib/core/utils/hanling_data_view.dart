import 'package:flutter/material.dart';
import 'package:task_manar_app/core/functions/custom_progress_indicator.dart';
import 'package:task_manar_app/core/utils/status_request.dart';
import 'package:task_manar_app/shared/custom_text.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({
    Key? key,
    required this.statusRequest,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (statusRequest == StatusRequest.success) {
      return widget;
    }
    return const Center(
      child: CustomText(
        'Something Went Wrong',
        color: Colors.red,
        fontSize: 3,
      ),
    );
    // return statusRequest == StatusRequest.loading
    //     ? Center(
    //         child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
    //     : statusRequest == StatusRequest.failure
    //         ? Center(
    //             child: Lottie.asset(AppImageAsset.offline,
    //                 width: 250, height: 250))
    //         : statusRequest == StatusRequest.serverfailure
    //             ? Center(
    //                 child: Lottie.asset(AppImageAsset.server,
    //                     width: 250, height: 250))
    //             : statusRequest == StatusRequest.failure
    //                 ? Center(
    //                     child: Lottie.asset(AppImageAsset.noData,
    //                         width: 250, height: 250, repeat: true))
    //                 : widget;
  }
}
