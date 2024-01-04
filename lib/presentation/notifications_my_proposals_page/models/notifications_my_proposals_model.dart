// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationsmyproposals_item_model.dart';

/// This class defines the variables used in the [notifications_my_proposals_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsMyProposalsModel extends Equatable {
  NotificationsMyProposalsModel(
      {this.notificationsmyproposalsItemList = const []}) {}

  List<NotificationsmyproposalsItemModel> notificationsmyproposalsItemList;

  NotificationsMyProposalsModel copyWith(
      {List<NotificationsmyproposalsItemModel>?
          notificationsmyproposalsItemList}) {
    return NotificationsMyProposalsModel(
      notificationsmyproposalsItemList: notificationsmyproposalsItemList ??
          this.notificationsmyproposalsItemList,
    );
  }

  @override
  List<Object?> get props => [notificationsmyproposalsItemList];
}
