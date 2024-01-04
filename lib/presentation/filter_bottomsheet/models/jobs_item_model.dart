// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [jobs_item_widget] screen.
class JobsItemModel extends Equatable {
  JobsItemModel({
    this.jobs,
    this.isSelected,
  }) {
    jobs = jobs ?? "Part Time";
    isSelected = isSelected ?? false;
  }

  String? jobs;

  bool? isSelected;

  JobsItemModel copyWith({
    String? jobs,
    bool? isSelected,
  }) {
    return JobsItemModel(
      jobs: jobs ?? this.jobs,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [jobs, isSelected];
}
