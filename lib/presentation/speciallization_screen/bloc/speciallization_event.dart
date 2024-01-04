// ignore_for_file: must_be_immutable

part of 'speciallization_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Speciallization widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SpeciallizationEvent extends Equatable {}

/// Event that is dispatched when the Speciallization widget is first created.
class SpeciallizationInitialEvent extends SpeciallizationEvent {
  @override
  List<Object?> get props => [];
}
