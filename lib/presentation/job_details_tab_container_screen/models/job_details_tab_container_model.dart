// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'framefive_item_model.dart';
import '../../../core/app_export.dart';
import 'jobdetailstabcontainer_item_model.dart';

/// This class defines the variables used in the [job_details_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobDetailsTabContainerModel extends Equatable {
  JobDetailsTabContainerModel({
    this.framefiveItemList = const [],
    this.jobdetailstabcontainerItemList = const [],
  }) {}

  List<FramefiveItemModel> framefiveItemList;

  List<JobdetailstabcontainerItemModel> jobdetailstabcontainerItemList;

  JobDetailsTabContainerModel copyWith({
    List<FramefiveItemModel>? framefiveItemList,
    List<JobdetailstabcontainerItemModel>? jobdetailstabcontainerItemList,
  }) {
    return JobDetailsTabContainerModel(
      framefiveItemList: framefiveItemList ?? this.framefiveItemList,
      jobdetailstabcontainerItemList:
          jobdetailstabcontainerItemList ?? this.jobdetailstabcontainerItemList,
    );
  }

  @override
  List<Object?> get props =>
      [framefiveItemList, jobdetailstabcontainerItemList];
}
