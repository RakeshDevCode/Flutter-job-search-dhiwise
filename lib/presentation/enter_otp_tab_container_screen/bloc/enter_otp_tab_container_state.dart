// ignore_for_file: must_be_immutable

part of 'enter_otp_tab_container_bloc.dart';

/// Represents the state of EnterOtpTabContainer in the application.
class EnterOtpTabContainerState extends Equatable {
  EnterOtpTabContainerState({this.enterOtpTabContainerModelObj});

  EnterOtpTabContainerModel? enterOtpTabContainerModelObj;

  @override
  List<Object?> get props => [
        enterOtpTabContainerModelObj,
      ];
  EnterOtpTabContainerState copyWith(
      {EnterOtpTabContainerModel? enterOtpTabContainerModelObj}) {
    return EnterOtpTabContainerState(
      enterOtpTabContainerModelObj:
          enterOtpTabContainerModelObj ?? this.enterOtpTabContainerModelObj,
    );
  }
}
