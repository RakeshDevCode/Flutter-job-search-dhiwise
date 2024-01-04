// ignore_for_file: must_be_immutable

part of 'saved_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Saved widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SavedEvent extends Equatable {}

/// Event that is dispatched when the Saved widget is first created.
class SavedInitialEvent extends SavedEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SavedEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
