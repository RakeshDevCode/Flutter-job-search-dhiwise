// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

/// Represents the state of AddNewEducation in the application.
class AddNewEducationState extends Equatable {
  AddNewEducationState({
    this.frameOneController,
    this.frameOneController1,
    this.frameOneController2,
    this.frameOneController3,
    this.selectedDropDownValue,
    this.addNewEducationModelObj,
  });

  TextEditingController? frameOneController;

  TextEditingController? frameOneController1;

  TextEditingController? frameOneController2;

  TextEditingController? frameOneController3;

  SelectionPopupModel? selectedDropDownValue;

  AddNewEducationModel? addNewEducationModelObj;

  @override
  List<Object?> get props => [
        frameOneController,
        frameOneController1,
        frameOneController2,
        frameOneController3,
        selectedDropDownValue,
        addNewEducationModelObj,
      ];
  AddNewEducationState copyWith({
    TextEditingController? frameOneController,
    TextEditingController? frameOneController1,
    TextEditingController? frameOneController2,
    TextEditingController? frameOneController3,
    SelectionPopupModel? selectedDropDownValue,
    AddNewEducationModel? addNewEducationModelObj,
  }) {
    return AddNewEducationState(
      frameOneController: frameOneController ?? this.frameOneController,
      frameOneController1: frameOneController1 ?? this.frameOneController1,
      frameOneController2: frameOneController2 ?? this.frameOneController2,
      frameOneController3: frameOneController3 ?? this.frameOneController3,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addNewEducationModelObj:
          addNewEducationModelObj ?? this.addNewEducationModelObj,
    );
  }
}
