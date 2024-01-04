import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fiftyfive_item_model.dart';
import '../models/jobs_item_model.dart';
import 'package:rakesh_s_application2/presentation/filter_bottomsheet/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

/// A bloc that manages the state of a Filter according to the event that is dispatched to it.
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(FilterState initialState) : super(initialState) {
    on<FilterInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(
        filterModelObj: state.filterModelObj?.copyWith(
            fiftyfiveItemList: fillFiftyfiveItemList(),
            jobsItemList: fillJobsItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterState> emit,
  ) {
    List<FiftyfiveItemModel> newList =
        List<FiftyfiveItemModel>.from(state.filterModelObj!.fiftyfiveItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(fiftyfiveItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<FilterState> emit,
  ) {
    List<JobsItemModel> newList =
        List<JobsItemModel>.from(state.filterModelObj!.jobsItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj: state.filterModelObj?.copyWith(jobsItemList: newList)));
  }

  List<FiftyfiveItemModel> fillFiftyfiveItemList() {
    return List.generate(6, (index) => FiftyfiveItemModel());
  }

  List<JobsItemModel> fillJobsItemList() {
    return List.generate(2, (index) => JobsItemModel());
  }
}
