import '../models/instructor.dart';

class InstructorRepository {
  final instructorWebServices;

  InstructorRepository(this.instructorWebServices);

  Future getInstructor() async {
    final characters = await instructorWebServices.getInstructor();
    return characters
        .map((character) => Instructor.fromJson(character))
        .toList();
  }
}
