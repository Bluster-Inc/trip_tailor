import '../../../core/app_export.dart';import '../models/enter_verification_code_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the EnterVerificationCodeScreen.
///
/// This class manages the state of the EnterVerificationCodeScreen, including the
/// current enterVerificationCodeModelObj
class EnterVerificationCodeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<EnterVerificationCodeModel> enterVerificationCodeModelObj = EnterVerificationCodeModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
