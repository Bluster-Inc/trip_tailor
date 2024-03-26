import '../../../core/app_export.dart';import '../models/login_filled_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginFilledStateScreen.
///
/// This class manages the state of the LoginFilledStateScreen, including the
/// current loginFilledStateModelObj
class LoginFilledStateController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController inputController = TextEditingController();

Rx<LoginFilledStateModel> loginFilledStateModelObj = LoginFilledStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); inputController.dispose(); } 
 }
