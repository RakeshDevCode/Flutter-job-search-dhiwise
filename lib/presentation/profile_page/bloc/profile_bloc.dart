import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import '../models/profile_item_model.dart';
import 'package:rakesh_s_application2/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
            fortysevenItemList: fillFortysevenItemList(),
            profileItemList: fillProfileItemList())));
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ProfileState> emit,
  ) {
    List<FortysevenItemModel> newList = List<FortysevenItemModel>.from(
        state.profileModelObj!.fortysevenItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        profileModelObj:
            state.profileModelObj?.copyWith(fortysevenItemList: newList)));
  }

  List<FortysevenItemModel> fillFortysevenItemList() {
    return List.generate(8, (index) => FortysevenItemModel());
  }

  List<ProfileItemModel> fillProfileItemList() {
    return [
      ProfileItemModel(
          image: ImageConstant.imgLogoDeepOrange700,
          bag: ImageConstant.imgBag,
          internshipUIUX: "Internship UI/UX Designer",
          smallLabelRegular: "Shopee Sg",
          smallLabelRegular1: "•",
          zipcode: "2019")
    ];
  }
}
