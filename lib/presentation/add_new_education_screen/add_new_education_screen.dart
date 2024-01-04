import 'bloc/add_new_education_bloc.dart';
import 'models/add_new_education_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rakesh_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:rakesh_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:rakesh_s_application2/widgets/custom_drop_down.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';
import 'package:rakesh_s_application2/widgets/custom_text_form_field.dart';

class AddNewEducationScreen extends StatelessWidget {
  const AddNewEducationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewEducationBloc>(
        create: (context) => AddNewEducationBloc(AddNewEducationState(
            addNewEducationModelObj: AddNewEducationModel()))
          ..add(AddNewEducationInitialEvent()),
        child: AddNewEducationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 32.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_school".tr,
                                        style: theme.textTheme.titleSmall)),
                                SizedBox(height: 9.v),
                                BlocSelector<
                                        AddNewEducationBloc,
                                        AddNewEducationState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.frameOneController,
                                    builder: (context, frameOneController) {
                                      return CustomTextFormField(
                                          controller: frameOneController,
                                          hintText:
                                              "msg_ex_harvard_university".tr);
                                    }),
                                SizedBox(height: 20.v),
                                _buildInputField1(context),
                                SizedBox(height: 20.v),
                                _buildInputField2(context),
                                SizedBox(height: 18.v),
                                _buildInputField4(context,
                                    endDateLabel: "lbl_start_date".tr,
                                    selectDateLabel: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                  onTapFrameOne(context);
                                }),
                                SizedBox(height: 18.v),
                                _buildInputField4(context,
                                    endDateLabel: "lbl_end_date".tr,
                                    selectDateLabel: "lbl_select_date".tr,
                                    onTapFrameOne: () {
                                  onTapFrameOne1(context);
                                }),
                                SizedBox(height: 18.v),
                                _buildInputField6(context),
                                SizedBox(height: 20.v),
                                _buildInputField7(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildSaveChanges(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgComponent1,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_add_new_education".tr));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_degree".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      BlocSelector<AddNewEducationBloc, AddNewEducationState,
              AddNewEducationModel?>(
          selector: (state) => state.addNewEducationModelObj,
          builder: (context, addNewEducationModelObj) {
            return CustomDropDown(
                hintText: "lbl_ex_bachelor".tr,
                items: addNewEducationModelObj?.dropdownItemList ?? [],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                onChanged: (value) {
                  context
                      .read<AddNewEducationBloc>()
                      .add(ChangeDropDownEvent(value: value));
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_field_of_study".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      BlocSelector<AddNewEducationBloc, AddNewEducationState,
              TextEditingController?>(
          selector: (state) => state.frameOneController1,
          builder: (context, frameOneController1) {
            return CustomTextFormField(
                controller: frameOneController1,
                hintText: "lbl_ex_business".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField6(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_grade".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      BlocSelector<AddNewEducationBloc, AddNewEducationState,
              TextEditingController?>(
          selector: (state) => state.frameOneController2,
          builder: (context, frameOneController2) {
            return CustomTextFormField(
                controller: frameOneController2,
                hintText: "lbl_ex_business".tr);
          })
    ]);
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_description".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 7.v),
      BlocSelector<AddNewEducationBloc, AddNewEducationState,
              TextEditingController?>(
          selector: (state) => state.frameOneController3,
          builder: (context, frameOneController3) {
            return CustomTextFormField(
                controller: frameOneController3,
                hintText: "lbl_lorem_ipsun".tr,
                textInputAction: TextInputAction.done,
                maxLines: 6,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v));
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 37.v),
        onPressed: () {
          onTapSaveChanges(context);
        });
  }

  /// Common widget
  Widget _buildInputField4(
    BuildContext context, {
    required String endDateLabel,
    required String selectDateLabel,
    Function? onTapFrameOne,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(endDateLabel,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.primary)),
      SizedBox(height: 9.v),
      GestureDetector(
          onTap: () {
            onTapFrameOne!.call();
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(selectDateLabel,
                            style: CustomTextStyles.titleMediumBluegray400
                                .copyWith(color: appTheme.blueGray400))),
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 24.adaptSize,
                        width: 24.adaptSize)
                  ])))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [addNewEducationModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne(BuildContext context) async {
    var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addNewEducationModelObj?.selectedSmallLabelRegular =
          dateTime;
      context
          .read<AddNewEducationBloc>()
          .add(ChangeDateEvent(date: dateTime.format(dateTimeFormatPattern)));
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [addNewEducationModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrameOne1(BuildContext context) async {
    var initialState = BlocProvider.of<AddNewEducationBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.addNewEducationModelObj?.selectedSmallLabelRegular1 =
          dateTime;
      context
          .read<AddNewEducationBloc>()
          .add(ChangeDateEvent1(date: dateTime.format(dateTimeFormatPattern)));
    }
  }

  /// Navigates to the experienceSettingScreen when the action is triggered.
  onTapSaveChanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.experienceSettingScreen,
    );
  }
}
