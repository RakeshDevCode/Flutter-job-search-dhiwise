// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'messageaction_item_model.dart';

/// This class defines the variables used in the [message_action_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageActionModel extends Equatable {
  MessageActionModel({this.messageactionItemList = const []}) {}

  List<MessageactionItemModel> messageactionItemList;

  MessageActionModel copyWith(
      {List<MessageactionItemModel>? messageactionItemList}) {
    return MessageActionModel(
      messageactionItemList:
          messageactionItemList ?? this.messageactionItemList,
    );
  }

  @override
  List<Object?> get props => [messageactionItemList];
}
