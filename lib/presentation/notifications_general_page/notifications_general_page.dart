import '../notifications_general_page/widgets/notificationsgeneral_item_widget.dart';
import 'bloc/notifications_general_bloc.dart';
import 'models/notifications_general_model.dart';
import 'models/notificationsgeneral_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rakesh_s_application2/core/app_export.dart';

class NotificationsGeneralPage extends StatefulWidget {
  const NotificationsGeneralPage({Key? key}) : super(key: key);

  @override
  NotificationsGeneralPageState createState() =>
      NotificationsGeneralPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsGeneralBloc>(
        create: (context) => NotificationsGeneralBloc(NotificationsGeneralState(
            notificationsGeneralModelObj: NotificationsGeneralModel()))
          ..add(NotificationsGeneralInitialEvent()),
        child: NotificationsGeneralPage());
  }
}

class NotificationsGeneralPageState extends State<NotificationsGeneralPage>
    with AutomaticKeepAliveClientMixin<NotificationsGeneralPage> {
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
                  _buildNotificationsGeneral(context)
                ]))));
  }

  /// Section Widget
  Widget _buildNotificationsGeneral(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<NotificationsGeneralBloc, NotificationsGeneralState,
                NotificationsGeneralModel?>(
            selector: (state) => state.notificationsGeneralModelObj,
            builder: (context, notificationsGeneralModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.5.v),
                        child: SizedBox(
                            width: 323.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300)));
                  },
                  itemCount: notificationsGeneralModelObj
                          ?.notificationsgeneralItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    NotificationsgeneralItemModel model =
                        notificationsGeneralModelObj
                                ?.notificationsgeneralItemList[index] ??
                            NotificationsgeneralItemModel();
                    return NotificationsgeneralItemWidget(model);
                  });
            }));
  }
}
