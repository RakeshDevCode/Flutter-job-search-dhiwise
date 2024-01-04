import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rakesh_s_application2/presentation/enter_otp_tab_container_screen/models/enter_otp_tab_container_model.dart';
part 'enter_otp_tab_container_event.dart';
part 'enter_otp_tab_container_state.dart';

/// A bloc that manages the state of a EnterOtpTabContainer according to the event that is dispatched to it.
class EnterOtpTabContainerBloc
    extends Bloc<EnterOtpTabContainerEvent, EnterOtpTabContainerState> {
  EnterOtpTabContainerBloc(EnterOtpTabContainerState initialState)
      : super(initialState) {
    on<EnterOtpTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EnterOtpTabContainerInitialEvent event,
    Emitter<EnterOtpTabContainerState> emit,
  ) async {}
}
