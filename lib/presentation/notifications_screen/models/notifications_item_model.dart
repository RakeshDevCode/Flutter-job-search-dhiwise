// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel extends Equatable {
  NotificationsItemModel({
    this.newPost,
    this.isSelectedSwitch,
    this.id,
  }) {
    newPost = newPost ?? "New Post";
    isSelectedSwitch = isSelectedSwitch ?? false;
    id = id ?? "";
  }

  String? newPost;

  bool? isSelectedSwitch;

  String? id;

  NotificationsItemModel copyWith({
    String? newPost,
    bool? isSelectedSwitch,
    String? id,
  }) {
    return NotificationsItemModel(
      newPost: newPost ?? this.newPost,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [newPost, isSelectedSwitch, id];
}
