// ignore_for_file: must_be_immutable

part of 'select_a_country_bloc.dart';

/// Represents the state of SelectACountry in the application.
class SelectACountryState extends Equatable {
  SelectACountryState({
    this.radioGroup = "",
    this.selectACountryModelObj,
  });

  SelectACountryModel? selectACountryModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        selectACountryModelObj,
      ];
  SelectACountryState copyWith({
    String? radioGroup,
    SelectACountryModel? selectACountryModelObj,
  }) {
    return SelectACountryState(
      radioGroup: radioGroup ?? this.radioGroup,
      selectACountryModelObj:
          selectACountryModelObj ?? this.selectACountryModelObj,
    );
  }
}
