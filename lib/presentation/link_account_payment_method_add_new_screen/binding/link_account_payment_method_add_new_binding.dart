import 'package:trip_tailor/presentation/link_account_payment_method_add_new_screen/controller/link_account_payment_method_add_new_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LinkAccountPaymentMethodAddNewScreen.
///
/// This class ensures that the LinkAccountPaymentMethodAddNewController is created when the
/// LinkAccountPaymentMethodAddNewScreen is first loaded.
class LinkAccountPaymentMethodAddNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkAccountPaymentMethodAddNewController());
  }
}
