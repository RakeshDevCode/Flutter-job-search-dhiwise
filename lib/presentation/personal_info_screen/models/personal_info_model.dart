// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [personal_info_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PersonalInfoModel extends Equatable {
  PersonalInfoModel() {}

  PersonalInfoModel copyWith() {
    return PersonalInfoModel();
  }

  @override
  List<Object?> get props => [];
}
