import '../../../core/app_export.dart';import 'list10_item_model.dart';import 'list11_item_model.dart';/// This class defines the variables used in the [hotel_booking_step_3_select_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelBookingStep3SelectPaymentMethodModel {Rx<List<List10ItemModel>> list10ItemList = Rx([List10ItemModel(visaxxxx:ImageConstant.imgVisaIncSvg.obs,title: "Visa xxxx 8976".obs,title1: "Expires on 10/26".obs),List10ItemModel(visaxxxx:ImageConstant.imgUserOnerror.obs,title: "Mastercard xxxx 8976".obs,title1: "Expires on 10/26".obs)]);

Rx<List<List11ItemModel>> list11ItemList = Rx([List11ItemModel(paypal:ImageConstant.imgLogosPaypal.obs,title: "Paypal".obs,title1: "fra*****@mail.com".obs),List11ItemModel(paypal:ImageConstant.imgAntdesignapplefilled.obs,title: "Apple pay".obs,title1: "fra*****@mail.com".obs),List11ItemModel(paypal:ImageConstant.imgGoogle.obs,title: "Google pay".obs,title1: "fra*****@mail.com".obs)]);

 }
