import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchlist_item_model.dart';
import 'package:rakesh_s_application2/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchState> emit,
  ) {
    List<Fulltime5ItemModel> newList =
        List<Fulltime5ItemModel>.from(state.searchModelObj!.fulltime5ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        searchModelObj:
            state.searchModelObj?.copyWith(fulltime5ItemList: newList)));
  }

  List<SearchlistItemModel> fillSearchlistItemList() {
    return [
      SearchlistItemModel(
          settings: ImageConstant.imgSettingsRed800,
          digitalMarketing: "Senior UI/UX Designer",
          motorola: "Motorola",
          price: "560 - 12.000/Month"),
      SearchlistItemModel(
          settings: ImageConstant.imgCardano2,
          digitalMarketing: "Senior UI/UX Designer",
          motorola: "Motorola",
          price: "660 - 10.000/Month"),
      SearchlistItemModel(
          settings: ImageConstant.imgCardano2,
          digitalMarketing: "Marketing Manager",
          motorola: "Motorola",
          price: "560 - 12.000/Month"),
      SearchlistItemModel(
          settings: ImageConstant.imgSettings,
          digitalMarketing: "Senior UI/UX Designer",
          motorola: "Motorola",
          price: "560 - 12.000/Month")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj
            ?.copyWith(searchlistItemList: fillSearchlistItemList())));
  }
}
