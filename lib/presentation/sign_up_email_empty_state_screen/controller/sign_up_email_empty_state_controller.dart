import '../../../core/app_export.dart';import '../models/sign_up_email_empty_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpEmailEmptyStateScreen.
///
/// This class manages the state of the SignUpEmailEmptyStateScreen, including the
/// current signUpEmailEmptyStateModelObj
class SignUpEmailEmptyStateController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpEmailEmptyStateModel> signUpEmailEmptyStateModelObj = SignUpEmailEmptyStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); passwordController.dispose(); } 
 }
