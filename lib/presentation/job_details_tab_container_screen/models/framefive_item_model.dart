// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framefive_item_widget] screen.
class FramefiveItemModel extends Equatable {
  FramefiveItemModel({
    this.fulltime,
    this.isSelected,
  }) {
    fulltime = fulltime ?? "Fulltime";
    isSelected = isSelected ?? false;
  }

  String? fulltime;

  bool? isSelected;

  FramefiveItemModel copyWith({
    String? fulltime,
    bool? isSelected,
  }) {
    return FramefiveItemModel(
      fulltime: fulltime ?? this.fulltime,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [fulltime, isSelected];
}
