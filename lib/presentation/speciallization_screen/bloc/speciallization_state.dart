// ignore_for_file: must_be_immutable

part of 'speciallization_bloc.dart';

/// Represents the state of Speciallization in the application.
class SpeciallizationState extends Equatable {
  SpeciallizationState({this.speciallizationModelObj});

  SpeciallizationModel? speciallizationModelObj;

  @override
  List<Object?> get props => [
        speciallizationModelObj,
      ];
  SpeciallizationState copyWith(
      {SpeciallizationModel? speciallizationModelObj}) {
    return SpeciallizationState(
      speciallizationModelObj:
          speciallizationModelObj ?? this.speciallizationModelObj,
    );
  }
}
