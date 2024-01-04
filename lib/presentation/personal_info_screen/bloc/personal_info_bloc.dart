import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rakesh_s_application2/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:rakesh_s_application2/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:rakesh_s_application2/data/repository/repository.dart';
part 'personal_info_event.dart';
part 'personal_info_state.dart';

/// A bloc that manages the state of a PersonalInfo according to the event that is dispatched to it.
class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc(PersonalInfoState initialState) : super(initialState) {
    on<PersonalInfoInitialEvent>(_onInitialize);
    on<FetchMeEvent>(_callFetchMe);
  }

  final _repository = Repository();

  var getMeResp = GetMeResp();

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [PersonalInfoBloc] bloc.
  ///
  /// The [BuildContext] parameter represents current [BuildContext]
  _onInitialize(
    PersonalInfoInitialEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        phoneController: TextEditingController(),
        locationController: TextEditingController()));
    add(
      FetchMeEvent(),
    );
  }

  /// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/me] with the provided event and emits the state.
  ///
  /// The [FetchMeEvent] parameter is used for handling event data
  /// The [emit] parameter is used for emitting the state
  ///
  /// Throws an error if an error occurs during the API call process.
  FutureOr<void> _callFetchMe(
    FetchMeEvent event,
    Emitter<PersonalInfoState> emit,
  ) async {
    await _repository.fetchMe(
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
    });
  }

  void _onFetchMeSuccess(
    GetMeResp resp,
    Emitter<PersonalInfoState> emit,
  ) {
    emit(
      state.copyWith(
        personalInfoModelObj: state.personalInfoModelObj?.copyWith(),
        emailController: TextEditingController(text: resp.data!.email! ?? ''),
        firstNameController:
            TextEditingController(text: resp.data!.name! ?? ''),
      ),
    );
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
