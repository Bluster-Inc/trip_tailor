import '../../../core/app_export.dart';import '../models/sign_up_email_filled_state_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpEmailFilledStateScreen.
///
/// This class manages the state of the SignUpEmailFilledStateScreen, including the
/// current signUpEmailFilledStateModelObj
class SignUpEmailFilledStateController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController inputController1 = TextEditingController();

Rx<SignUpEmailFilledStateModel> signUpEmailFilledStateModelObj = SignUpEmailFilledStateModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); inputController.dispose(); emailController.dispose(); inputController1.dispose(); } 
 }
