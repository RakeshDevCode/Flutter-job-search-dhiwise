// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'fortyseven_item_model.dart';
import '../../../core/app_export.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel extends Equatable {
  ProfileModel({
    this.fortysevenItemList = const [],
    this.profileItemList = const [],
  }) {}

  List<FortysevenItemModel> fortysevenItemList;

  List<ProfileItemModel> profileItemList;

  ProfileModel copyWith({
    List<FortysevenItemModel>? fortysevenItemList,
    List<ProfileItemModel>? profileItemList,
  }) {
    return ProfileModel(
      fortysevenItemList: fortysevenItemList ?? this.fortysevenItemList,
      profileItemList: profileItemList ?? this.profileItemList,
    );
  }

  @override
  List<Object?> get props => [fortysevenItemList, profileItemList];
}
