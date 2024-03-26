import '../../../core/app_export.dart';
import '../models/about_traveline_model.dart';

/// A controller class for the AboutTravelineScreen.
///
/// This class manages the state of the AboutTravelineScreen, including the
/// current aboutTravelineModelObj
class AboutTravelineController extends GetxController {
  Rx<AboutTravelineModel> aboutTravelineModelObj = AboutTravelineModel().obs;
}
