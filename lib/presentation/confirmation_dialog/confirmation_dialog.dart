import 'bloc/confirmation_bloc.dart';
import 'models/confirmation_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationBloc>(
        create: (context) => ConfirmationBloc(
            ConfirmationState(confirmationModelObj: ConfirmationModel()))
          ..add(ConfirmationInitialEvent()),
        child: ConfirmationDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 331.h,
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              SizedBox(
                  width: 279.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_i_agree_to_the".tr,
                            style: CustomTextStyles.titleMediumGray500_1),
                        TextSpan(
                            text: "msg_terms_of_service".tr,
                            style: theme.textTheme.titleMedium),
                        TextSpan(
                            text: "lbl_and".tr,
                            style: CustomTextStyles.titleMediumGray500_1),
                        TextSpan(
                            text: "msg_conditions_of_use".tr,
                            style: theme.textTheme.titleMedium),
                        TextSpan(
                            text: "msg_including_consent".tr,
                            style: CustomTextStyles.titleMediumGray500_1)
                      ]),
                      textAlign: TextAlign.center)),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  height: 54.v,
                  width: 181.h,
                  text: "msg_agree_and_continue".tr,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                  onPressed: () {
                    onTapAgreeAndContinue(context);
                  }),
              SizedBox(height: 24.v),
              Text("lbl_disgree".tr,
                  style: CustomTextStyles.titleSmallOnPrimary)
            ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapAgreeAndContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
