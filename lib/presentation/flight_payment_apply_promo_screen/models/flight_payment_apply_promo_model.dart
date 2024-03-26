import '../../../core/app_export.dart';import 'list15_item_model.dart';/// This class defines the variables used in the [flight_payment_apply_promo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FlightPaymentApplyPromoModel {Rx<List<List15ItemModel>> list15ItemList = Rx([List15ItemModel(offer: "Flight Discount 50%".obs,title: "Valid until Sep 30".obs,flightDiscount:ImageConstant.imgCheckPrimary20x20.obs),List15ItemModel(offer: "Holiday to Japan".obs,title: "Valid until Sep 30".obs)]);

 }
