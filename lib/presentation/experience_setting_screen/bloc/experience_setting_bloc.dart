import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/experiencesetting_item_model.dart';
import 'package:rakesh_s_application2/presentation/experience_setting_screen/models/experience_setting_model.dart';
part 'experience_setting_event.dart';
part 'experience_setting_state.dart';

/// A bloc that manages the state of a ExperienceSetting according to the event that is dispatched to it.
class ExperienceSettingBloc
    extends Bloc<ExperienceSettingEvent, ExperienceSettingState> {
  ExperienceSettingBloc(ExperienceSettingState initialState)
      : super(initialState) {
    on<ExperienceSettingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExperienceSettingInitialEvent event,
    Emitter<ExperienceSettingState> emit,
  ) async {
    emit(state.copyWith(
        experienceSettingModelObj: state.experienceSettingModelObj?.copyWith(
            experiencesettingItemList: fillExperiencesettingItemList())));
  }

  List<ExperiencesettingItemModel> fillExperiencesettingItemList() {
    return [
      ExperiencesettingItemModel(
          bag: ImageConstant.imgBag,
          internshipUIUX: "Internship UI/UX Designer",
          smallLabelRegular: "Shopee Sg",
          smallLabelRegular1: "•",
          zipcode: "2019"),
      ExperiencesettingItemModel(
          bag: ImageConstant.imgCardano1,
          internshipUIUX: "Junior UI Designer",
          smallLabelRegular: "Cardano",
          smallLabelRegular1: "•",
          zipcode: "2020"),
      ExperiencesettingItemModel(
          bag: ImageConstant.imgLogoDeepOrange700,
          internshipUIUX: "UI/UX Designer",
          smallLabelRegular: "Shopee Sg",
          smallLabelRegular1: "•",
          zipcode: "2021")
    ];
  }
}
