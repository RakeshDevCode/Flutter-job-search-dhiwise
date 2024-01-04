// ignore_for_file: must_be_immutable

part of 'sign_up_complete_account_bloc.dart';

/// Represents the state of SignUpCompleteAccount in the application.
class SignUpCompleteAccountState extends Equatable {
  SignUpCompleteAccountState({
    this.emailController,
    this.lastNameController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpCompleteAccountModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? lastNameController;

  TextEditingController? passwordController;

  SignUpCompleteAccountModel? signUpCompleteAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        lastNameController,
        passwordController,
        isShowPassword,
        signUpCompleteAccountModelObj,
      ];
  SignUpCompleteAccountState copyWith({
    TextEditingController? emailController,
    TextEditingController? lastNameController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpCompleteAccountModel? signUpCompleteAccountModelObj,
  }) {
    return SignUpCompleteAccountState(
      emailController: emailController ?? this.emailController,
      lastNameController: lastNameController ?? this.lastNameController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpCompleteAccountModelObj:
          signUpCompleteAccountModelObj ?? this.signUpCompleteAccountModelObj,
    );
  }
}
