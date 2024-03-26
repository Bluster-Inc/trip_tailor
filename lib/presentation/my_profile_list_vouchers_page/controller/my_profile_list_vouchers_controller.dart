import '../../../core/app_export.dart';
import '../models/my_profile_list_vouchers_model.dart';

/// A controller class for the MyProfileListVouchersPage.
///
/// This class manages the state of the MyProfileListVouchersPage, including the
/// current myProfileListVouchersModelObj
class MyProfileListVouchersController extends GetxController {
  MyProfileListVouchersController(this.myProfileListVouchersModelObj);

  Rx<MyProfileListVouchersModel> myProfileListVouchersModelObj;
}
