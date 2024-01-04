import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/eightyeight_item_model.dart';
import 'package:rakesh_s_application2/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<HomeState> emit,
  ) {
    List<Fulltime1ItemModel> newList =
        List<Fulltime1ItemModel>.from(state.homeModelObj!.fulltime1ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homeModelObj:
            state.homeModelObj?.copyWith(fulltime1ItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<HomeState> emit,
  ) {
    List<Fulltime3ItemModel> newList =
        List<Fulltime3ItemModel>.from(state.homeModelObj!.fulltime3ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homeModelObj:
            state.homeModelObj?.copyWith(fulltime3ItemList: newList)));
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(
          seniorUIUXDesigner: "Senior UI/UX Designer",
          shopee: "Shopee",
          jakartaIndonesia: "Jakarta, Indonesia (Remote)",
          price: "1100 - 12.000/Month"),
      FrameItemModel(
          seniorUIUXDesigner: "Senior UI/UX Designer",
          shopee: "Shopee",
          jakartaIndonesia: "Jakarta, Indonesia (Remote)",
          price: "1100 - 12.000/Month")
    ];
  }

  List<EightyeightItemModel> fillEightyeightItemList() {
    return [
      EightyeightItemModel(
          digitalMarketing: "Digital Marketing",
          motorola: "Motorola",
          price: "560 - 12.000/Month")
    ];
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      frameItemList: fillFrameItemList(),
      eightyeightItemList: fillEightyeightItemList(),
    )));
  }
}
