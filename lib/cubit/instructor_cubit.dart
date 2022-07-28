import 'package:bloc/bloc.dart';
import 'package:inova/data/models/instructor.dart';
import 'package:meta/meta.dart';

import '../data/repository/Instructor_repo.dart';
import '../data/web_services/instructor_web_service.dart';

part 'instructor_state.dart';

class InstructorCubit extends Cubit<InstructorState> {
  final InstructorRepository instructorRepository =
      InstructorRepository(InstructorWebServices());
  List<Instructor> instructors = [];

  InstructorCubit() : super(InstructorInitial());

  List<Instructor> getAllCharacters() {
    instructorRepository.getInstructor().then((instructors) {
      emit(InstructorsPageLoaded(instructors));
      this.instructors = instructors;
    });

    return instructors;
  }
}
