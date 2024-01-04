import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationsgeneral_item_model.dart';
import 'package:rakesh_s_application2/presentation/notifications_general_page/models/notifications_general_model.dart';
part 'notifications_general_event.dart';
part 'notifications_general_state.dart';

/// A bloc that manages the state of a NotificationsGeneral according to the event that is dispatched to it.
class NotificationsGeneralBloc
    extends Bloc<NotificationsGeneralEvent, NotificationsGeneralState> {
  NotificationsGeneralBloc(NotificationsGeneralState initialState)
      : super(initialState) {
    on<NotificationsGeneralInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsGeneralInitialEvent event,
    Emitter<NotificationsGeneralState> emit,
  ) async {
    emit(state.copyWith(
        notificationsGeneralModelObj: state.notificationsGeneralModelObj
            ?.copyWith(
                notificationsgeneralItemList:
                    fillNotificationsgeneralItemList())));
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  List<NotificationsgeneralItemModel> fillNotificationsgeneralItemList() {
    return [
      NotificationsgeneralItemModel(
          bag: ImageConstant.imgBag,
          juniorUIDesigner: "Junior UI Designer ",
          shopeeSg: "Shopee Sg",
          time: "32 Min ago",
          loremIpsumDolor:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
      NotificationsgeneralItemModel(
          bag: ImageConstant.imgBag,
          juniorUIDesigner: "Senior UI Designer ",
          shopeeSg: "Shopee Sg",
          time: "32 Min ago",
          loremIpsumDolor:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
      NotificationsgeneralItemModel(
          bag: ImageConstant.imgSettingsRed800,
          juniorUIDesigner: "UI UX Designer",
          shopeeSg: "Shell",
          time: "32 Min ago",
          loremIpsumDolor:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
      NotificationsgeneralItemModel(
          bag: ImageConstant.imgClose,
          juniorUIDesigner: "UI Designer ",
          shopeeSg: "Cardano ",
          time: "32 Min ago",
          loremIpsumDolor:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
    ];
  }
}
