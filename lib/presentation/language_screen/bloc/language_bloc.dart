import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/englishuk_item_model.dart';
import '../models/chineses_item_model.dart';
import 'package:rakesh_s_application2/presentation/language_screen/models/language_model.dart';
part 'language_event.dart';
part 'language_state.dart';

/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(LanguageState initialState) : super(initialState) {
    on<LanguageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LanguageInitialEvent event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(
        languageModelObj: state.languageModelObj?.copyWith(
            englishukItemList: fillEnglishukItemList(),
            chinesesItemList: fillChinesesItemList())));
  }

  List<EnglishukItemModel> fillEnglishukItemList() {
    return [
      EnglishukItemModel(
          englishUK: "English (UK)",
          englishUK1: ImageConstant.imgCheckmarkGreenA700)
    ];
  }

  List<ChinesesItemModel> fillChinesesItemList() {
    return [
      ChinesesItemModel(chineses: "Chineses"),
      ChinesesItemModel(chineses: "Croatian"),
      ChinesesItemModel(chineses: "Czech"),
      ChinesesItemModel(chineses: "Danish"),
      ChinesesItemModel(chineses: "Filipino"),
      ChinesesItemModel(chineses: "Finland")
    ];
  }
}
