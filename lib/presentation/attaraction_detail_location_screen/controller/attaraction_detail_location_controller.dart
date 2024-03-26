import '../../../core/app_export.dart';
import '../models/attaraction_detail_location_model.dart';

/// A controller class for the AttaractionDetailLocationScreen.
///
/// This class manages the state of the AttaractionDetailLocationScreen, including the
/// current attaractionDetailLocationModelObj
class AttaractionDetailLocationController extends GetxController {
  Rx<AttaractionDetailLocationModel> attaractionDetailLocationModelObj =
      AttaractionDetailLocationModel().obs;
}
