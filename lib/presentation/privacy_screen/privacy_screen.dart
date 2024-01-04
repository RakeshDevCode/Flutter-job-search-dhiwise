import 'bloc/privacy_bloc.dart';
import 'models/privacy_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:rakesh_s_application2/widgets/app_bar/custom_app_bar.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<PrivacyBloc>(
        create: (context) =>
            PrivacyBloc(PrivacyState(privacyModelObj: PrivacyModel()))
              ..add(PrivacyInitialEvent()),
        child: PrivacyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrivacyBloc, PrivacyState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 30.v),
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, right: 43.h),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_terms".tr,
                                    style: CustomTextStyles.titleMediumBold_1)),
                            SizedBox(height: 11.v),
                            Opacity(
                                opacity: 0.5,
                                child: SizedBox(
                                    width: 307.h,
                                    child: Text("msg_lorem_ipsum_dolor9".tr,
                                        maxLines: 7,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleSmallBluegray400_1
                                            .copyWith(height: 1.57)))),
                            Opacity(
                                opacity: 0.5,
                                child: SizedBox(
                                    width: 307.h,
                                    child: Text("msg_lorem_ipsum_dolor9".tr,
                                        maxLines: 7,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleSmallBluegray400_1
                                            .copyWith(height: 1.57)))),
                            SizedBox(height: 17.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("msg_changes_to_the_service".tr,
                                    style: CustomTextStyles.titleMediumBold_1)),
                            SizedBox(height: 7.v),
                            _buildPrivacyStack(context)
                          ]))))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_legel_and_policies".tr));
  }

  /// Section Widget
  Widget _buildPrivacyStack(BuildContext context) {
    return SizedBox(
        height: 303.v,
        width: 307.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                      width: 307.h,
                      child: Text("msg_lorem_ipsum_dolor9".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallBluegray400_1
                              .copyWith(height: 1.57))))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                  opacity: 0.5,
                  child: SizedBox(
                      width: 307.h,
                      child: Text("msg_lorem_ipsum_dolor9".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallBluegray400_1
                              .copyWith(height: 1.57)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }
}
