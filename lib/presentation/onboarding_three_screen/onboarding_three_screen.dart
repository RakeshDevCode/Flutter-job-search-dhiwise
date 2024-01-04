import 'bloc/onboarding_three_bloc.dart';
import 'models/onboarding_three_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key}) : super(key: key);

  PageController pageController = PageController();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
        create: (context) => OnboardingThreeBloc(OnboardingThreeState(
            onboardingThreeModelObj: OnboardingThreeModel()))
          ..add(OnboardingThreeInitialEvent()),
        child: OnboardingThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgOnboardingThree),
                          fit: BoxFit.cover)),
                  child: Container(
                      height: 768.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 29.v),
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                                height: 739.v,
                                child: PageView(
                                    controller: pageController,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(children: [
                                        Container(
                                            height: 699.v,
                                            width: 327.h,
                                            margin:
                                                EdgeInsets.only(bottom: 5.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage,
                                                      height: 422.v,
                                                      width: 313.h,
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: SizedBox(
                                                          height: 367.v,
                                                          width: 327.h,
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          41.h,
                                                                      vertical:
                                                                          32.v),
                                                                  decoration: AppDecoration
                                                                      .white
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder32),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                            width:
                                                                                214.h,
                                                                            margin: EdgeInsets.symmetric(horizontal: 14.h),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "msg_application_surely2".tr, style: theme.textTheme.headlineSmall),
                                                                                  TextSpan(text: "lbl_each_company".tr, style: theme.textTheme.headlineSmall)
                                                                                ]),
                                                                                textAlign: TextAlign.center)),
                                                                        Container(
                                                                            width:
                                                                                243.h,
                                                                            margin: EdgeInsets.only(top: 14.v),
                                                                            child: Text("msg_semper_in_cursus".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallGray500SemiBold_1.copyWith(height: 1.57))),
                                                                        CustomElevatedButton(
                                                                            width:
                                                                                156.h,
                                                                            text: "lbl_get_started".tr,
                                                                            margin: EdgeInsets.only(top: 69.v))
                                                                      ])))))
                                                ]))
                                      ]),
                                      Column(children: [
                                        Container(
                                            height: 718.v,
                                            width: double.maxFinite,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage361x283,
                                                      height: 361.v,
                                                      width: 283.h,
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: 335.v,
                                                          width: 327.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          39.h,
                                                                      vertical:
                                                                          32.v),
                                                                  decoration: AppDecoration
                                                                      .white
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder32),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        SizedBox(
                                                                            width:
                                                                                246.h,
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "msg_the_best_app_for2".tr, style: theme.textTheme.headlineSmall),
                                                                                  TextSpan(text: "msg_find_your_dream".tr, style: theme.textTheme.headlineSmall)
                                                                                ]),
                                                                                textAlign: TextAlign.center)),
                                                                        Container(
                                                                            width:
                                                                                243.h,
                                                                            margin: EdgeInsets.only(top: 18.v),
                                                                            child: Text("msg_semper_in_cursus".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallGray500SemiBold_1.copyWith(height: 1.57))),
                                                                        CustomElevatedButton(
                                                                            width:
                                                                                101.h,
                                                                            text: "lbl_next".tr,
                                                                            margin: EdgeInsets.only(top: 69.v))
                                                                      ])))))
                                                ]))
                                      ]),
                                      Column(children: [
                                        Container(
                                            height: 713.v,
                                            width: double.maxFinite,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h,
                                                vertical: 1.v),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage369x306,
                                                      height: 369.v,
                                                      width: 306.h,
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height: 335.v,
                                                          width: 327.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          24.h,
                                                                      vertical:
                                                                          32.v),
                                                                  decoration: AppDecoration
                                                                      .white
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder32),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                            width:
                                                                                273.h,
                                                                            margin: EdgeInsets.only(left: 6.h),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "lbl_better".tr, style: theme.textTheme.headlineSmall),
                                                                                  TextSpan(text: "msg_future_is_starting".tr, style: theme.textTheme.headlineSmall)
                                                                                ]),
                                                                                textAlign: TextAlign.center)),
                                                                        Container(
                                                                            width: 243
                                                                                .h,
                                                                            margin: EdgeInsets.only(
                                                                                left: 17.h,
                                                                                top: 14.v,
                                                                                right: 17.h),
                                                                            child: Text("msg_semper_in_cursus".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallGray500SemiBold_1.copyWith(height: 1.57))),
                                                                        CustomElevatedButton(
                                                                            width:
                                                                                101.h,
                                                                            text: "lbl_next".tr,
                                                                            margin: EdgeInsets.only(top: 69.v))
                                                                      ])))))
                                                ]))
                                      ])
                                    ])),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SmoothPageIndicator(
                                    controller: pageController,
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 12,
                                        activeDotColor:
                                            theme.colorScheme.primary,
                                        dotColor: theme.colorScheme.primary
                                            .withOpacity(0.41),
                                        dotHeight: 10.v,
                                        dotWidth: 10.h),
                                    onDotClicked: (value) {
                                      pageController.jumpToPage(value);
                                    }))
                          ])))));
    });
  }
}
