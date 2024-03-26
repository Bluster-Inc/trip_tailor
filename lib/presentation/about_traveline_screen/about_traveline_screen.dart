import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trip_tailor/core/app_export.dart';
import 'controller/about_traveline_controller.dart';

// ignore_for_file: must_be_immutable
class AboutTravelineScreen extends GetWidget<AboutTravelineController> {
  AboutTravelineScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirtyThree(),
              SizedBox(height: 26.v),
              Container(
                width: 323.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 27.h,
                ),
                child: Text(
                  "msg_traveline_is_one".tr,
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBluegray700.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_our_presence".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildMap(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyThree() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 33.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(24.h, 20.v, 24.h, 19.v),
            decoration: AppDecoration.outlineLightblueA200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_traveline".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer18,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMenu2,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Text(
            "lbl_about_traveline".tr,
            style: CustomTextStyles.headlineSmallOnPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap() {
    return SizedBox(
      height: 200.v,
      width: 327.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
