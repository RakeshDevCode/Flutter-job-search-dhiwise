import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notificationsmyproposals_item_model.dart';
import 'package:rakesh_s_application2/presentation/notifications_my_proposals_page/models/notifications_my_proposals_model.dart';
part 'notifications_my_proposals_event.dart';
part 'notifications_my_proposals_state.dart';

/// A bloc that manages the state of a NotificationsMyProposals according to the event that is dispatched to it.
class NotificationsMyProposalsBloc
    extends Bloc<NotificationsMyProposalsEvent, NotificationsMyProposalsState> {
  NotificationsMyProposalsBloc(NotificationsMyProposalsState initialState)
      : super(initialState) {
    on<NotificationsMyProposalsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsMyProposalsInitialEvent event,
    Emitter<NotificationsMyProposalsState> emit,
  ) async {
    emit(state.copyWith(
        notificationsMyProposalsModelObj: state.notificationsMyProposalsModelObj
            ?.copyWith(
                notificationsmyproposalsItemList:
                    fillNotificationsmyproposalsItemList())));
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  List<NotificationsmyproposalsItemModel>
      fillNotificationsmyproposalsItemList() {
    return [
      NotificationsmyproposalsItemModel(
          iconButton: ImageConstant.imgGroupRed800,
          seniorUIUXDesigner: "Senior UI/UX Designer",
          smallLabelRegular: "Shell"),
      NotificationsmyproposalsItemModel(
          iconButton: ImageConstant.imgGroup,
          seniorUIUXDesigner: "Senior UI/UX Designer",
          smallLabelRegular: "Cardano "),
      NotificationsmyproposalsItemModel(
          iconButton: ImageConstant.imgLogo,
          seniorUIUXDesigner: "Senior UI/UX Designer",
          smallLabelRegular: "Shopee Sg")
    ];
  }
}
