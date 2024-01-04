// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fiftyfive_item_model.dart';
import 'jobs_item_model.dart';

/// This class defines the variables used in the [filter_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel extends Equatable {
  FilterModel({
    this.fiftyfiveItemList = const [],
    this.jobsItemList = const [],
  }) {}

  List<FiftyfiveItemModel> fiftyfiveItemList;

  List<JobsItemModel> jobsItemList;

  FilterModel copyWith({
    List<FiftyfiveItemModel>? fiftyfiveItemList,
    List<JobsItemModel>? jobsItemList,
  }) {
    return FilterModel(
      fiftyfiveItemList: fiftyfiveItemList ?? this.fiftyfiveItemList,
      jobsItemList: jobsItemList ?? this.jobsItemList,
    );
  }

  @override
  List<Object?> get props => [fiftyfiveItemList, jobsItemList];
}
