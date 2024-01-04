// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specialization_item_model.dart';

/// This class defines the variables used in the [speciallization_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpeciallizationModel extends Equatable {
  SpeciallizationModel({this.specializationItemList = const []}) {}

  List<SpecializationItemModel> specializationItemList;

  SpeciallizationModel copyWith(
      {List<SpecializationItemModel>? specializationItemList}) {
    return SpeciallizationModel(
      specializationItemList:
          specializationItemList ?? this.specializationItemList,
    );
  }

  @override
  List<Object?> get props => [specializationItemList];
}
