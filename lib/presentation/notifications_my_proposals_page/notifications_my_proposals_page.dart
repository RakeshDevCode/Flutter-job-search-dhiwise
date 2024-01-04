import '../notifications_my_proposals_page/widgets/notificationsmyproposals_item_widget.dart';
import 'bloc/notifications_my_proposals_bloc.dart';
import 'models/notifications_my_proposals_model.dart';
import 'models/notificationsmyproposals_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';

class NotificationsMyProposalsPage extends StatefulWidget {
  const NotificationsMyProposalsPage({Key? key}) : super(key: key);

  @override
  NotificationsMyProposalsPageState createState() =>
      NotificationsMyProposalsPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsMyProposalsBloc>(
        create: (context) => NotificationsMyProposalsBloc(
            NotificationsMyProposalsState(
                notificationsMyProposalsModelObj:
                    NotificationsMyProposalsModel()))
          ..add(NotificationsMyProposalsInitialEvent()),
        child: NotificationsMyProposalsPage());
  }
}

class NotificationsMyProposalsPageState
    extends State<NotificationsMyProposalsPage>
    with AutomaticKeepAliveClientMixin<NotificationsMyProposalsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.background,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildOpenedSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildOpenedSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Text("msg_application_status".tr,
                    style: CustomTextStyles.titleMediumBold_1)),
            CustomImageView(
                imagePath: ImageConstant.imgArrowUp,
                height: 24.adaptSize,
                width: 24.adaptSize)
          ]),
          SizedBox(height: 23.v),
          BlocSelector<
                  NotificationsMyProposalsBloc,
                  NotificationsMyProposalsState,
                  NotificationsMyProposalsModel?>(
              selector: (state) => state.notificationsMyProposalsModelObj,
              builder: (context, notificationsMyProposalsModelObj) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.5.v),
                          child: SizedBox(
                              width: 327.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.gray300)));
                    },
                    itemCount: notificationsMyProposalsModelObj
                            ?.notificationsmyproposalsItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      NotificationsmyproposalsItemModel model =
                          notificationsMyProposalsModelObj
                                  ?.notificationsmyproposalsItemList[index] ??
                              NotificationsmyproposalsItemModel();
                      return NotificationsmyproposalsItemWidget(model);
                    });
              })
        ]));
  }
}
