// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fulltime1_item_widget] screen.
class Fulltime1ItemModel extends Equatable {
  Fulltime1ItemModel({
    this.fulltime,
    this.isSelected,
  }) {
    fulltime = fulltime ?? "Fulltime";
    isSelected = isSelected ?? false;
  }

  String? fulltime;

  bool? isSelected;

  Fulltime1ItemModel copyWith({
    String? fulltime,
    bool? isSelected,
  }) {
    return Fulltime1ItemModel(
      fulltime: fulltime ?? this.fulltime,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [fulltime, isSelected];
}
