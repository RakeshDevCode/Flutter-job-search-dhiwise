import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/message_item_model.dart';
import 'package:rakesh_s_application2/presentation/message_page/models/message_model.dart';
part 'message_event.dart';
part 'message_state.dart';

/// A bloc that manages the state of a Message according to the event that is dispatched to it.
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc(MessageState initialState) : super(initialState) {
    on<MessageInitialEvent>(_onInitialize);
  }

  List<MessageItemModel> fillMessageItemList() {
    return [
      MessageItemModel(
          circleImage: ImageConstant.imgAvatar56x56,
          chanceSeptimus: "Chance Septimus",
          loremIpsumDolor: "Lorem ipsum dolor sit amet...",
          time: "10:20"),
      MessageItemModel(
          circleImage: ImageConstant.imgAvatar1,
          chanceSeptimus: "Robert Fox",
          loremIpsumDolor: "Lorem ipsum dolor sit amet...",
          time: "10:20")
    ];
  }

  _onInitialize(
    MessageInitialEvent event,
    Emitter<MessageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        messageModelObj: state.messageModelObj
            ?.copyWith(messageItemList: fillMessageItemList())));
  }
}
