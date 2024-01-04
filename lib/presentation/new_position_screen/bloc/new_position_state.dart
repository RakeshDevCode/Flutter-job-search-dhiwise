// ignore_for_file: must_be_immutable

part of 'new_position_bloc.dart';

/// Represents the state of NewPosition in the application.
class NewPositionState extends Equatable {
  NewPositionState({
    this.frameOneController,
    this.nameController,
    this.locationController,
    this.frameOneController1,
    this.selectedDropDownValue,
    this.newPositionModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? nameController;

  TextEditingController? locationController;

  TextEditingController? frameOneController1;

  SelectionPopupModel? selectedDropDownValue;

  NewPositionModel? newPositionModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        nameController,
        locationController,
        frameOneController1,
        selectedDropDownValue,
        newPositionModelObj,
      ];
  NewPositionState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? nameController,
    TextEditingController? locationController,
    TextEditingController? frameOneController1,
    SelectionPopupModel? selectedDropDownValue,
    NewPositionModel? newPositionModelObj,
  }) {
    return NewPositionState(
      frameOneController: frameOneController ?? this.frameOneController,
      nameController: nameController ?? this.nameController,
      locationController: locationController ?? this.locationController,
      frameOneController1: frameOneController1 ?? this.frameOneController1,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      newPositionModelObj: newPositionModelObj ?? this.newPositionModelObj,
    );
  }
}
