import '../../../core/app_export.dart';
import '../models/train_confirm_to_payment_model.dart';

/// A controller class for the TrainConfirmToPaymentBottomsheet.
///
/// This class manages the state of the TrainConfirmToPaymentBottomsheet, including the
/// current trainConfirmToPaymentModelObj
class TrainConfirmToPaymentController extends GetxController {
  Rx<TrainConfirmToPaymentModel> trainConfirmToPaymentModelObj =
      TrainConfirmToPaymentModel().obs;
}
