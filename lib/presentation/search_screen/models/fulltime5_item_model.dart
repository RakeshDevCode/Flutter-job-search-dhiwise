// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fulltime5_item_widget] screen.
class Fulltime5ItemModel extends Equatable {
  Fulltime5ItemModel({
    this.fulltime,
    this.isSelected,
  }) {
    fulltime = fulltime ?? "Fulltime";
    isSelected = isSelected ?? false;
  }

  String? fulltime;

  bool? isSelected;

  Fulltime5ItemModel copyWith({
    String? fulltime,
    bool? isSelected,
  }) {
    return Fulltime5ItemModel(
      fulltime: fulltime ?? this.fulltime,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [fulltime, isSelected];
}
