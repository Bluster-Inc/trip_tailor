import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/splash_controller.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6.v),
              Text(
                "lbl_triptailor".tr,
                style: theme.textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
