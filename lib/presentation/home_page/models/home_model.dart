// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'eightyeight_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.frameItemList = const [],
    this.eightyeightItemList = const [],
  }) {}

  List<FrameItemModel> frameItemList;

  List<EightyeightItemModel> eightyeightItemList;

  HomeModel copyWith({
    List<FrameItemModel>? frameItemList,
    List<EightyeightItemModel>? eightyeightItemList,
  }) {
    return HomeModel(
      frameItemList: frameItemList ?? this.frameItemList,
      eightyeightItemList: eightyeightItemList ?? this.eightyeightItemList,
    );
  }

  @override
  List<Object?> get props => [frameItemList, eightyeightItemList];
}
