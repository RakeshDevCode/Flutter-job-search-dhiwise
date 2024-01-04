// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fulltime7_item_widget] screen.
class Fulltime7ItemModel extends Equatable {
  Fulltime7ItemModel({
    this.fulltime,
    this.isSelected,
  }) {
    fulltime = fulltime ?? "Fulltime";
    isSelected = isSelected ?? false;
  }

  String? fulltime;

  bool? isSelected;

  Fulltime7ItemModel copyWith({
    String? fulltime,
    bool? isSelected,
  }) {
    return Fulltime7ItemModel(
      fulltime: fulltime ?? this.fulltime,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [fulltime, isSelected];
}
