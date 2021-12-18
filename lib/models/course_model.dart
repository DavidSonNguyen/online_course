import 'package:built_value/built_value.dart';

part 'course_model.g.dart';

abstract class CourseModel implements Built<CourseModel, CourseModelBuilder> {
  CourseModel._();

  String get category;

  String get title;

  String get img;

  factory CourseModel([Function(CourseModelBuilder) updates]) = _$CourseModel;

  factory CourseModel.create(
    String category,
    String title,
    String img,
  ) {
    return CourseModel(
      (updates) => updates
        ..category = category
        ..title = title
        ..img = img,
    );
  }
}
