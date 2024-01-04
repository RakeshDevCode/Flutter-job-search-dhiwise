import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messageaction_item_model.dart';
import 'package:rakesh_s_application2/presentation/message_action_screen/models/message_action_model.dart';
part 'message_action_event.dart';
part 'message_action_state.dart';

/// A bloc that manages the state of a MessageAction according to the event that is dispatched to it.
class MessageActionBloc extends Bloc<MessageActionEvent, MessageActionState> {
  MessageActionBloc(MessageActionState initialState) : super(initialState) {
    on<MessageActionInitialEvent>(_onInitialize);
  }

  List<MessageactionItemModel> fillMessageactionItemList() {
    return [
      MessageactionItemModel(
          estherHoward: ImageConstant.imgImage56x56,
          estherHoward1: "Esther Howard",
          loremIpsumDolor: "Lorem ipsum dolor sit amet...",
          time: "10:20",
          widget: "2"),
      MessageactionItemModel(
          estherHoward1: "Wade Warren",
          loremIpsumDolor: "Lorem ipsum dolor sit amet...",
          time: "10:20",
          widget: "2"),
      MessageactionItemModel(
          estherHoward1: "Robert Fox",
          loremIpsumDolor: "Lorem ipsum dolor sit amet...")
    ];
  }

  _onInitialize(
    MessageActionInitialEvent event,
    Emitter<MessageActionState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        messageActionModelObj: state.messageActionModelObj
            ?.copyWith(messageactionItemList: fillMessageactionItemList())));
    NavigatorService.pushNamed(
      AppRoutes.chatScreen,
    );
  }
}
