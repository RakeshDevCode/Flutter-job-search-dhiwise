// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'experiencesetting_item_model.dart';

/// This class defines the variables used in the [experience_setting_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExperienceSettingModel extends Equatable {
  ExperienceSettingModel({this.experiencesettingItemList = const []}) {}

  List<ExperiencesettingItemModel> experiencesettingItemList;

  ExperienceSettingModel copyWith(
      {List<ExperiencesettingItemModel>? experiencesettingItemList}) {
    return ExperienceSettingModel(
      experiencesettingItemList:
          experiencesettingItemList ?? this.experiencesettingItemList,
    );
  }

  @override
  List<Object?> get props => [experiencesettingItemList];
}
