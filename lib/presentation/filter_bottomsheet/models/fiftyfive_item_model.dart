// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [fiftyfive_item_widget] screen.
class FiftyfiveItemModel extends Equatable {
  FiftyfiveItemModel({
    this.categories,
    this.isSelected,
  }) {
    categories = categories ?? "Design & Creative";
    isSelected = isSelected ?? false;
  }

  String? categories;

  bool? isSelected;

  FiftyfiveItemModel copyWith({
    String? categories,
    bool? isSelected,
  }) {
    return FiftyfiveItemModel(
      categories: categories ?? this.categories,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [categories, isSelected];
}
