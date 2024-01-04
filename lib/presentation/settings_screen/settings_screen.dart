import 'bloc/settings_bloc.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/presentation/home_page/home_page.dart';
import 'package:rakesh_s_application2/presentation/message_page/message_page.dart';
import 'package:rakesh_s_application2/presentation/profile_page/profile_page.dart';
import 'package:rakesh_s_application2/presentation/saved_page/saved_page.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:rakesh_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:rakesh_s_application2/widgets/custom_bottom_bar.dart';
import 'package:rakesh_s_application2/presentation/logout_popup_dialog/logout_popup_dialog.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
        create: (context) =>
            SettingsBloc(SettingsState(settingsModelObj: SettingsModel()))
              ..add(SettingsInitialEvent()),
        child: SettingsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 28.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, right: 24.h, bottom: 5.v),
                                child: Column(children: [
                                  _buildBannerProgress(context),
                                  SizedBox(height: 32.v),
                                  _buildAccount1(context),
                                  SizedBox(height: 26.v),
                                  _buildGeneral(context),
                                  SizedBox(height: 26.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_about".tr,
                                          style: CustomTextStyles
                                              .labelLargeSemiBold)),
                                  SizedBox(height: 16.v),
                                  _buildPrivacy(context,
                                      thumbsUpImage: ImageConstant.imgShield,
                                      experienceText: "msg_legal_and_policies"
                                          .tr, onTapPrivacy: () {
                                    onTapLegalAndPolicies(context);
                                  }),
                                  SizedBox(height: 15.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Divider(indent: 36.h)),
                                  SizedBox(height: 16.v),
                                  _buildPrivacy(context,
                                      thumbsUpImage: ImageConstant.imgProfile,
                                      experienceText: "lbl_help_feedback".tr),
                                  SizedBox(height: 17.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Divider(indent: 36.h)),
                                  SizedBox(height: 16.v),
                                  _buildPrivacy(context,
                                      thumbsUpImage:
                                          ImageConstant.imgVideoCamera,
                                      experienceText: "lbl_about_us".tr),
                                  SizedBox(height: 28.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtLargeLabelMedium(context);
                                      },
                                      child: Text("lbl_logout".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimary))
                                ]))))
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
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
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildBannerProgress(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              margin: EdgeInsets.only(top: 5.v, bottom: 4.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        child: CircularProgressIndicator(
                            value: 0.5, strokeWidth: 4.h))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_65".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 8.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_profile_completeness".tr,
                        style: CustomTextStyles.titleMediumOnPrimaryContainer),
                    SizedBox(height: 4.v),
                    Opacity(
                        opacity: 0.8,
                        child: SizedBox(
                            width: 185.h,
                            child: Text("msg_quality_profiles".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelLargeOnPrimaryContainer_2
                                    .copyWith(height: 1.67))))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildAccount1(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_account".tr,
              style: CustomTextStyles.labelLargeSemiBold)),
      SizedBox(height: 15.v),
      _buildPrivacy(context,
          thumbsUpImage: ImageConstant.imgPerson,
          experienceText: "lbl_personal_info".tr, onTapPrivacy: () {
        onTapAccount(context);
      }),
      SizedBox(height: 16.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(context,
          thumbsUpImage: ImageConstant.imgThumbsUpPrimary,
          experienceText: "lbl_experience".tr, onTapPrivacy: () {
        onTapPrivacy(context);
      }),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h))
    ]);
  }

  /// Section Widget
  Widget _buildGeneral(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text("lbl_general".tr,
              style: CustomTextStyles.labelLargeSemiBold)),
      SizedBox(height: 15.v),
      _buildPrivacy(context,
          thumbsUpImage: ImageConstant.imgBell,
          experienceText: "lbl_notification".tr, onTapPrivacy: () {
        onTapNotification(context);
      }),
      SizedBox(height: 16.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(context,
          thumbsUpImage: ImageConstant.imgGlobe,
          experienceText: "lbl_language".tr, onTapPrivacy: () {
        onTapLanguage(context);
      }),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h)),
      SizedBox(height: 15.v),
      _buildPrivacy(context,
          thumbsUpImage: ImageConstant.imgShieldDone,
          experienceText: "lbl_security".tr),
      SizedBox(height: 14.v),
      Align(alignment: Alignment.centerRight, child: Divider(indent: 36.h))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildPrivacy(
    BuildContext context, {
    required String thumbsUpImage,
    required String experienceText,
    Function? onTapPrivacy,
  }) {
    return GestureDetector(
        onTap: () {
          onTapPrivacy!.call();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: thumbsUpImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 7.v),
                  child: Text(experienceText,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.colorScheme.primary))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v))
            ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the personalInfoScreen when the action is triggered.
  onTapAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalInfoScreen,
    );
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapPrivacy(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  /// Navigates to the privacyScreen when the action is triggered.
  onTapLegalAndPolicies(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.privacyScreen,
    );
  }

  /// Displays a dialog with the [LogoutPopupDialog] content.
  onTapTxtLargeLabelMedium(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LogoutPopupDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
