// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CourseModel extends CourseModel {
  @override
  final String category;
  @override
  final String title;
  @override
  final String img;

  factory _$CourseModel([void Function(CourseModelBuilder)? updates]) =>
      (new CourseModelBuilder()..update(updates)).build();

  _$CourseModel._(
      {required this.category, required this.title, required this.img})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(category, 'CourseModel', 'category');
    BuiltValueNullFieldError.checkNotNull(title, 'CourseModel', 'title');
    BuiltValueNullFieldError.checkNotNull(img, 'CourseModel', 'img');
  }

  @override
  CourseModel rebuild(void Function(CourseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseModelBuilder toBuilder() => new CourseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseModel &&
        category == other.category &&
        title == other.title &&
        img == other.img;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, category.hashCode), title.hashCode), img.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseModel')
          ..add('category', category)
          ..add('title', title)
          ..add('img', img))
        .toString();
  }
}

class CourseModelBuilder implements Builder<CourseModel, CourseModelBuilder> {
  _$CourseModel? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  CourseModelBuilder();

  CourseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _title = $v.title;
      _img = $v.img;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CourseModel;
  }

  @override
  void update(void Function(CourseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseModel build() {
    final _$result = _$v ??
        new _$CourseModel._(
            category: BuiltValueNullFieldError.checkNotNull(
                category, 'CourseModel', 'category'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'CourseModel', 'title'),
            img: BuiltValueNullFieldError.checkNotNull(
                img, 'CourseModel', 'img'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
