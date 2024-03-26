import '../../../core/app_export.dart';import 'list23_item_model.dart';import 'list24_item_model.dart';/// This class defines the variables used in the [my_profile_list_vouchers_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyProfileListVouchersModel {Rx<List<List23ItemModel>> list23ItemList = Rx([List23ItemModel(upto:ImageConstant.imgVectorLightBlueA200.obs,upto1:ImageConstant.imgVectorLightBlueA200.obs,upto2:ImageConstant.imgVectorLightBlueA2001x4.obs,upto3:ImageConstant.imgVectorLightBlueA2001x4.obs,title: "up\nto".obs,title1: "Hotel discount coupon".obs,title2: "*T&C Apply".obs,offer: "50% OFF".obs,upto4:ImageConstant.imgGroupLightBlueA20025x76.obs,upto5:ImageConstant.imgImg100x130.obs)]);

Rx<List<List24ItemModel>> list24ItemList = Rx([List24ItemModel(title: "Cashback".obs,title1: "Up to 50%".obs,month: "Valid until July 14,2022".obs,title2: "Details".obs),List24ItemModel(title: "Cashback".obs,title1: "Up to 50%".obs,month: "Valid until July 14,2022".obs,title2: "Details".obs)]);

 }
