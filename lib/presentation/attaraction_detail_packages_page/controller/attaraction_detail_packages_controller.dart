import '../../../core/app_export.dart';
import '../models/attaraction_detail_packages_model.dart';

/// A controller class for the AttaractionDetailPackagesPage.
///
/// This class manages the state of the AttaractionDetailPackagesPage, including the
/// current attaractionDetailPackagesModelObj
class AttaractionDetailPackagesController extends GetxController {
  AttaractionDetailPackagesController(this.attaractionDetailPackagesModelObj);

  Rx<AttaractionDetailPackagesModel> attaractionDetailPackagesModelObj;
}
