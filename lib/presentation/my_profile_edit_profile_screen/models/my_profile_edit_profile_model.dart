import 'package:trip_tailor/core/app_export.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [my_profile_edit_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyProfileEditProfileModel {Rx<DateTime>? selectedLabel = Rx(DateTime.now());

Rx<String> label = Rx("Date of birth");

Rx<DateTime>? selectedLabel1 = Rx(DateTime.now());

Rx<String> label1 = Rx("Issues date");

Rx<DateTime>? selectedLabel12 = Rx(DateTime.now());

Rx<String> label12 = Rx("Expiration date");

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
