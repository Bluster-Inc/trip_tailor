import 'package:trip_tailor/presentation/link_account_payment_method_screen/controller/link_account_payment_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LinkAccountPaymentMethodScreen.
///
/// This class ensures that the LinkAccountPaymentMethodController is created when the
/// LinkAccountPaymentMethodScreen is first loaded.
class LinkAccountPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkAccountPaymentMethodController());
  }
}
