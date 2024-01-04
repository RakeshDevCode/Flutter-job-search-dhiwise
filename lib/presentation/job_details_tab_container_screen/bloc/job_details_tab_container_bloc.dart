import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framefive_item_model.dart';
import '../models/jobdetailstabcontainer_item_model.dart';
import 'package:rakesh_s_application2/presentation/job_details_tab_container_screen/models/job_details_tab_container_model.dart';
part 'job_details_tab_container_event.dart';
part 'job_details_tab_container_state.dart';

/// A bloc that manages the state of a JobDetailsTabContainer according to the event that is dispatched to it.
class JobDetailsTabContainerBloc
    extends Bloc<JobDetailsTabContainerEvent, JobDetailsTabContainerState> {
  JobDetailsTabContainerBloc(JobDetailsTabContainerState initialState)
      : super(initialState) {
    on<JobDetailsTabContainerInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    JobDetailsTabContainerInitialEvent event,
    Emitter<JobDetailsTabContainerState> emit,
  ) async {
    emit(state.copyWith(
        jobDetailsTabContainerModelObj:
            state.jobDetailsTabContainerModelObj?.copyWith(
      framefiveItemList: fillFramefiveItemList(),
      jobdetailstabcontainerItemList: fillJobdetailstabcontainerItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<JobDetailsTabContainerState> emit,
  ) {
    List<FramefiveItemModel> newList = List<FramefiveItemModel>.from(
        state.jobDetailsTabContainerModelObj!.framefiveItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        jobDetailsTabContainerModelObj: state.jobDetailsTabContainerModelObj
            ?.copyWith(framefiveItemList: newList)));
  }

  List<FramefiveItemModel> fillFramefiveItemList() {
    return List.generate(2, (index) => FramefiveItemModel());
  }

  List<JobdetailstabcontainerItemModel> fillJobdetailstabcontainerItemList() {
    return [
      JobdetailstabcontainerItemModel(
          wallet: ImageConstant.imgWallet, salary: "Salary", price: "6k - 11k"),
      JobdetailstabcontainerItemModel(
          wallet: ImageConstant.imgWorkDeepPurple400,
          salary: "Job Type",
          price: "Remote"),
      JobdetailstabcontainerItemModel(
          wallet: ImageConstant.imgProfileOrange500,
          salary: "Position",
          price: "Senior")
    ];
  }
}
