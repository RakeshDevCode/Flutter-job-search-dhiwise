import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specialization_item_model.dart';
import 'package:rakesh_s_application2/presentation/speciallization_screen/models/speciallization_model.dart';
part 'speciallization_event.dart';
part 'speciallization_state.dart';

/// A bloc that manages the state of a Speciallization according to the event that is dispatched to it.
class SpeciallizationBloc
    extends Bloc<SpeciallizationEvent, SpeciallizationState> {
  SpeciallizationBloc(SpeciallizationState initialState) : super(initialState) {
    on<SpeciallizationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpeciallizationInitialEvent event,
    Emitter<SpeciallizationState> emit,
  ) async {
    emit(state.copyWith(
        speciallizationModelObj: state.speciallizationModelObj
            ?.copyWith(specializationItemList: fillSpecializationItemList())));
  }

  List<SpecializationItemModel> fillSpecializationItemList() {
    return [
      SpecializationItemModel(
          designCreative: ImageConstant.imgCheckmark,
          designCreative1: "Design & Creative"),
      SpecializationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Development & IT"),
      SpecializationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Engineering & Architecture"),
      SpecializationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Sales & Marketing"),
      SpecializationItemModel(
          designCreative: ImageConstant.imgPlay, designCreative1: "Writing"),
      SpecializationItemModel(
          designCreative: ImageConstant.imgPlay, designCreative1: "Finance")
    ];
  }
}
