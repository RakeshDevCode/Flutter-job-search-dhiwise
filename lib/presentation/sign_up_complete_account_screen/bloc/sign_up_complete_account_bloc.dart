import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rakesh_s_application2/presentation/sign_up_complete_account_screen/models/sign_up_complete_account_model.dart';
part 'sign_up_complete_account_event.dart';
part 'sign_up_complete_account_state.dart';

/// A bloc that manages the state of a SignUpCompleteAccount according to the event that is dispatched to it.
class SignUpCompleteAccountBloc
    extends Bloc<SignUpCompleteAccountEvent, SignUpCompleteAccountState> {
  SignUpCompleteAccountBloc(SignUpCompleteAccountState initialState)
      : super(initialState) {
    on<SignUpCompleteAccountInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignUpCompleteAccountInitialEvent event,
    Emitter<SignUpCompleteAccountState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        lastNameController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
