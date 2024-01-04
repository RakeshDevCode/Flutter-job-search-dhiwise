// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:rakesh_s_application2/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [add_new_education_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewEducationModel extends Equatable {
  AddNewEducationModel({
    this.dropdownItemList = const [],
    this.selectedSmallLabelRegular,
    this.smallLabelRegular = "Select Date",
    this.selectedSmallLabelRegular1,
    this.smallLabelRegular1 = "Select Date",
  }) {
    selectedSmallLabelRegular = selectedSmallLabelRegular ?? DateTime.now();
    selectedSmallLabelRegular1 = selectedSmallLabelRegular1 ?? DateTime.now();
  }

  List<SelectionPopupModel> dropdownItemList;

  DateTime? selectedSmallLabelRegular;

  String smallLabelRegular;

  DateTime? selectedSmallLabelRegular1;

  String smallLabelRegular1;

  AddNewEducationModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    DateTime? selectedSmallLabelRegular,
    String? smallLabelRegular,
    DateTime? selectedSmallLabelRegular1,
    String? smallLabelRegular1,
  }) {
    return AddNewEducationModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      selectedSmallLabelRegular:
          selectedSmallLabelRegular ?? this.selectedSmallLabelRegular,
      smallLabelRegular: smallLabelRegular ?? this.smallLabelRegular,
      selectedSmallLabelRegular1:
          selectedSmallLabelRegular1 ?? this.selectedSmallLabelRegular1,
      smallLabelRegular1: smallLabelRegular1 ?? this.smallLabelRegular1,
    );
  }

  @override
  List<Object?> get props => [
        dropdownItemList,
        selectedSmallLabelRegular,
        smallLabelRegular,
        selectedSmallLabelRegular1,
        smallLabelRegular1
      ];
}
