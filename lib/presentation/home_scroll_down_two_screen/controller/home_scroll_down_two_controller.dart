import '../../../core/app_export.dart';
import '../models/home_scroll_down_two_model.dart';

/// A controller class for the HomeScrollDownTwoScreen.
///
/// This class manages the state of the HomeScrollDownTwoScreen, including the
/// current homeScrollDownTwoModelObj
class HomeScrollDownTwoController extends GetxController {
  Rx<HomeScrollDownTwoModel> homeScrollDownTwoModelObj =
      HomeScrollDownTwoModel().obs;
}
