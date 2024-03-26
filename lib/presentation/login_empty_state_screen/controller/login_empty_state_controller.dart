import '../../../core/app_export.dart';import '../models/login_empty_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginEmptyStateScreen.
///
/// This class manages the state of the LoginEmptyStateScreen, including the
/// current loginEmptyStateModelObj
class LoginEmptyStateController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginEmptyStateModel> loginEmptyStateModelObj = LoginEmptyStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
