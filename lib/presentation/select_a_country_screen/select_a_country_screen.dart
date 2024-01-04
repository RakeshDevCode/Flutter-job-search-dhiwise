import 'bloc/select_a_country_bloc.dart';
import 'models/select_a_country_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_radio_button.dart';

class SelectACountryScreen extends StatelessWidget {
  const SelectACountryScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectACountryBloc>(
      create: (context) => SelectACountryBloc(SelectACountryState(
        selectACountryModelObj: SelectACountryModel(),
      ))
        ..add(SelectACountryInitialEvent()),
      child: SelectACountryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildSelectACountry(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectACountry(BuildContext context) {
    return BlocBuilder<SelectACountryBloc, SelectACountryState>(
      builder: (context, state) {
        return state.selectACountryModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 217.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_afghanistan".tr,
                      value: state.selectACountryModelObj?.radioList[2] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 253.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_albania".tr,
                      value: state.selectACountryModelObj?.radioList[3] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_algeria".tr,
                      value: state.selectACountryModelObj?.radioList[4] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 248.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_andorra".tr,
                      value: state.selectACountryModelObj?.radioList[5] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_angola".tr,
                      value: state.selectACountryModelObj?.radioList[6] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 148.h,
                    ),
                    child: CustomRadioButton(
                      text: "msg_antigua_and_barbuda".tr,
                      value: state.selectACountryModelObj?.radioList[7] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 234.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_argentina".tr,
                      value: state.selectACountryModelObj?.radioList[8] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 234.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_argentina".tr,
                      value: state.selectACountryModelObj?.radioList[9] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 246.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_armenia".tr,
                      value: state.selectACountryModelObj?.radioList[10] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 243.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_australia".tr,
                      value: state.selectACountryModelObj?.radioList[11] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_austria".tr,
                      value: state.selectACountryModelObj?.radioList[12] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 229.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_azerbaijan".tr,
                      value: state.selectACountryModelObj?.radioList[13] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24.h, 22.v, 229.h, 5.v),
                    child: CustomRadioButton(
                      text: "lbl_azerbaijan".tr,
                      value: state.selectACountryModelObj?.radioList[14] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<SelectACountryBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
