// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fulltime3_item_widget] screen.
class Fulltime3ItemModel extends Equatable {
  Fulltime3ItemModel({
    this.fulltime,
    this.isSelected,
  }) {
    fulltime = fulltime ?? "Fulltime";
    isSelected = isSelected ?? false;
  }

  String? fulltime;

  bool? isSelected;

  Fulltime3ItemModel copyWith({
    String? fulltime,
    bool? isSelected,
  }) {
    return Fulltime3ItemModel(
      fulltime: fulltime ?? this.fulltime,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [fulltime, isSelected];
}
