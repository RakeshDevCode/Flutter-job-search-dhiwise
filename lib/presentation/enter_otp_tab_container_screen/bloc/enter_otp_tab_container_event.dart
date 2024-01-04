// ignore_for_file: must_be_immutable

part of 'enter_otp_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EnterOtpTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EnterOtpTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EnterOtpTabContainer widget is first created.
class EnterOtpTabContainerInitialEvent extends EnterOtpTabContainerEvent {
  @override
  List<Object?> get props => [];
}
