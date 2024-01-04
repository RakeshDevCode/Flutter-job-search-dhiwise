import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rakesh_s_application2/presentation/enter_otp_page/models/enter_otp_model.dart';
part 'enter_otp_event.dart';
part 'enter_otp_state.dart';

/// A bloc that manages the state of a EnterOtp according to the event that is dispatched to it.
class EnterOtpBloc extends Bloc<EnterOtpEvent, EnterOtpState> {
  EnterOtpBloc(EnterOtpState initialState) : super(initialState) {
    on<EnterOtpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EnterOtpInitialEvent event,
    Emitter<EnterOtpState> emit,
  ) async {}
}
