// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fortyseven_item_widget] screen.
class FortysevenItemModel extends Equatable {
  FortysevenItemModel({
    this.skills,
    this.isSelected,
  }) {
    skills = skills ?? "Design & Creative";
    isSelected = isSelected ?? false;
  }

  String? skills;

  bool? isSelected;

  FortysevenItemModel copyWith({
    String? skills,
    bool? isSelected,
  }) {
    return FortysevenItemModel(
      skills: skills ?? this.skills,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [skills, isSelected];
}
