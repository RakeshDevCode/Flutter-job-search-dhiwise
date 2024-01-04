import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/saved_item_model.dart';
import 'package:rakesh_s_application2/presentation/saved_page/models/saved_model.dart';
part 'saved_event.dart';
part 'saved_state.dart';

/// A bloc that manages the state of a Saved according to the event that is dispatched to it.
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc(SavedState initialState) : super(initialState) {
    on<SavedInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    SavedInitialEvent event,
    Emitter<SavedState> emit,
  ) async {
    emit(state.copyWith(
        savedModelObj:
            state.savedModelObj?.copyWith(savedItemList: fillSavedItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SavedState> emit,
  ) {
    List<Fulltime7ItemModel> newList =
        List<Fulltime7ItemModel>.from(state.savedModelObj!.fulltime7ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        savedModelObj:
            state.savedModelObj?.copyWith(fulltime7ItemList: newList)));
  }

  List<SavedItemModel> fillSavedItemList() {
    return [
      SavedItemModel(
          bag: ImageConstant.imgBag,
          digitalMarketing: "UX Designer",
          motorola: "Motorola",
          price: "560 - 12.000/Month"),
      SavedItemModel(
          bag: ImageConstant.imgCardano2,
          digitalMarketing: "UI/UX Designer",
          motorola: "Motorola",
          price: "560 - 12.000/Month"),
      SavedItemModel(
          bag: ImageConstant.imgSettingsRed800,
          digitalMarketing: "UI Designer",
          motorola: "Motorola",
          price: "560 - 12.000/Month")
    ];
  }
}
