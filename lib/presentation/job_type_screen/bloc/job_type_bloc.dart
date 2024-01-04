import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/jobtype_item_model.dart';
import 'package:rakesh_s_application2/presentation/job_type_screen/models/job_type_model.dart';
part 'job_type_event.dart';
part 'job_type_state.dart';

/// A bloc that manages the state of a JobType according to the event that is dispatched to it.
class JobTypeBloc extends Bloc<JobTypeEvent, JobTypeState> {
  JobTypeBloc(JobTypeState initialState) : super(initialState) {
    on<JobTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    JobTypeInitialEvent event,
    Emitter<JobTypeState> emit,
  ) async {
    emit(state.copyWith(
        jobTypeModelObj: state.jobTypeModelObj
            ?.copyWith(jobtypeItemList: fillJobtypeItemList())));
  }

  List<JobtypeItemModel> fillJobtypeItemList() {
    return [
      JobtypeItemModel(
          work: ImageConstant.imgWork,
          findAJob: "Find a job",
          itSEasyToFind: "It’s easy to find your dream jobs here with us."),
      JobtypeItemModel(
          work: ImageConstant.imgProfileOrange500,
          findAJob: "Find a employee",
          itSEasyToFind: "It’s easy to find eployees here with us.")
    ];
  }
}
