// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'jobtype_item_model.dart';

/// This class defines the variables used in the [job_type_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class JobTypeModel extends Equatable {
  JobTypeModel({this.jobtypeItemList = const []}) {}

  List<JobtypeItemModel> jobtypeItemList;

  JobTypeModel copyWith({List<JobtypeItemModel>? jobtypeItemList}) {
    return JobTypeModel(
      jobtypeItemList: jobtypeItemList ?? this.jobtypeItemList,
    );
  }

  @override
  List<Object?> get props => [jobtypeItemList];
}
