import 'bloc/enter_otp_bloc.dart';
import 'models/enter_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';
import 'package:rakesh_s_application2/widgets/custom_elevated_button.dart';

class EnterOtpPage extends StatefulWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  EnterOtpPageState createState() => EnterOtpPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<EnterOtpBloc>(
        create: (context) =>
            EnterOtpBloc(EnterOtpState(enterOtpModelObj: EnterOtpModel()))
              ..add(EnterOtpInitialEvent()),
        child: EnterOtpPage());
  }
}

class EnterOtpPageState extends State<EnterOtpPage>
    with AutomaticKeepAliveClientMixin<EnterOtpPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnterOtpBloc, EnterOtpState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.background,
                  child: Column(children: [
                    SizedBox(height: 40.v),
                    _buildContinueSection(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildContinueSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          CustomElevatedButton(
              text: "lbl_continue".tr,
              onPressed: () {
                onTapContinue(context);
              }),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("msg_didn_t_receive_code".tr,
                    style: CustomTextStyles.titleMediumGray500),
                Text("lbl_resend_code".tr, style: theme.textTheme.titleMedium)
              ]))
        ]));
  }

  /// Navigates to the jobTypeScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.jobTypeScreen,
    );
  }
}
