part of 'instructor_cubit.dart';

@immutable
abstract class InstructorState {}

class InstructorInitial extends InstructorState {}

class InstructorPageLoading extends InstructorState {}

class InstructorPageError extends InstructorState {}

class InstructorsPageLoaded extends InstructorState {
  final List<Instructor> instructors;

  InstructorsPageLoaded(this.instructors);
}
