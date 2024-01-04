import 'bloc/personal_info_bloc.dart';
import 'models/personal_info_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/core/utils/validation_functions.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rakesh_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';
import 'package:rakesh_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInfoBloc>(
        create: (context) => PersonalInfoBloc(
            PersonalInfoState(personalInfoModelObj: PersonalInfoModel()))
          ..add(PersonalInfoInitialEvent()),
        child: PersonalInfoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 32.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(children: [
                                    _buildPersonalInfoInputField1(context),
                                    SizedBox(height: 18.v),
                                    _buildPersonalInfoInputField2(context),
                                    SizedBox(height: 18.v),
                                    _buildPersonalInfoInputField3(context),
                                    SizedBox(height: 18.v),
                                    _buildPersonalInfoInputField4(context),
                                    SizedBox(height: 18.v),
                                    _buildPersonalInfoInputField5(context)
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildSaveChangesButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_personal_info".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEditSquare,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildPersonalInfoInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<PersonalInfoBloc, PersonalInfoState, TextEditingController?>(
          selector: (state) => state.firstNameController,
          builder: (context, firstNameController) {
            return CustomTextFormField(
                controller: firstNameController, hintText: "lbl_gustavo".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPersonalInfoInputField2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_last_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<PersonalInfoBloc, PersonalInfoState, TextEditingController?>(
          selector: (state) => state.lastNameController,
          builder: (context, lastNameController) {
            return CustomTextFormField(
                controller: lastNameController, hintText: "lbl_lipshutz".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPersonalInfoInputField3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<PersonalInfoBloc, PersonalInfoState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "lbl_xyz_gmail_com".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildPersonalInfoInputField4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_phone".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<PersonalInfoBloc, PersonalInfoState, TextEditingController?>(
          selector: (state) => state.phoneController,
          builder: (context, phoneController) {
            return CustomTextFormField(
                controller: phoneController, hintText: "lbl_1_1234567890".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildPersonalInfoInputField5(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_location".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<PersonalInfoBloc, PersonalInfoState, TextEditingController?>(
          selector: (state) => state.locationController,
          builder: (context, locationController) {
            return CustomTextFormField(
                controller: locationController,
                hintText: "lbl_lorem_ipsun".tr,
                textInputAction: TextInputAction.done,
                maxLines: 6,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveChangesButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 44.v),
        buttonStyle: CustomButtonStyles.fillGrayTL24,
        buttonTextStyle: CustomTextStyles.titleMediumGray50001);
  }

  /// Navigates to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }
}
