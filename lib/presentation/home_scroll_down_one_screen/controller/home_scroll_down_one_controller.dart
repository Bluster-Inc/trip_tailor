import '../../../core/app_export.dart';
import '../models/home_scroll_down_one_model.dart';

/// A controller class for the HomeScrollDownOneScreen.
///
/// This class manages the state of the HomeScrollDownOneScreen, including the
/// current homeScrollDownOneModelObj
class HomeScrollDownOneController extends GetxController {
  Rx<HomeScrollDownOneModel> homeScrollDownOneModelObj =
      HomeScrollDownOneModel().obs;
}
