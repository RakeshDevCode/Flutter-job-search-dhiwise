// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationsgeneral_item_model.dart';

/// This class defines the variables used in the [notifications_general_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsGeneralModel extends Equatable {
  NotificationsGeneralModel({this.notificationsgeneralItemList = const []}) {}

  List<NotificationsgeneralItemModel> notificationsgeneralItemList;

  NotificationsGeneralModel copyWith(
      {List<NotificationsgeneralItemModel>? notificationsgeneralItemList}) {
    return NotificationsGeneralModel(
      notificationsgeneralItemList:
          notificationsgeneralItemList ?? this.notificationsgeneralItemList,
    );
  }

  @override
  List<Object?> get props => [notificationsgeneralItemList];
}
