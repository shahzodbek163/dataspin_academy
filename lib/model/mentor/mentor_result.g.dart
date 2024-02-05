// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MentorResultImpl _$$MentorResultImplFromJson(Map<String, dynamic> json) =>
    _$MentorResultImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MentorResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MentorResultImplToJson(_$MentorResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$MentorResultDataImpl _$$MentorResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MentorResultDataImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      cv: json['cv'] == null
          ? null
          : Photo.fromJson(json['cv'] as Map<String, dynamic>),
      subMentors: (json['subMentors'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      employee: Employee.fromJson(json['employee'] as Map<String, dynamic>),
      youTubeLinks: json['youTubeLinks'] as String,
    );

Map<String, dynamic> _$$MentorResultDataImplToJson(
        _$MentorResultDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'courses': instance.courses,
      'cv': instance.cv,
      'subMentors': instance.subMentors,
      'employee': instance.employee,
      'youTubeLinks': instance.youTubeLinks,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as bool,
      courseFor:
          CourseForElement.fromJson(json['courseFor'] as Map<String, dynamic>),
      courseType:
          CourseType.fromJson(json['courseType'] as Map<String, dynamic>),
      previewPhoto:
          Photo.fromJson(json['previewPhoto'] as Map<String, dynamic>),
      description: json['description'] as String,
      courseAboutParts: (json['courseAboutParts'] as List<dynamic>)
          .map((e) => CourseForElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'courseFor': instance.courseFor,
      'courseType': instance.courseType,
      'previewPhoto': instance.previewPhoto,
      'description': instance.description,
      'courseAboutParts': instance.courseAboutParts,
    };

_$CourseForElementImpl _$$CourseForElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseForElementImpl(
      icon: json['icon'] == null
          ? null
          : Photo.fromJson(json['icon'] as Map<String, dynamic>),
      name: json['name'] as String,
      id: json['id'] as int,
      description: json['description'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$CourseForElementImplToJson(
        _$CourseForElementImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'id': instance.id,
      'description': instance.description,
      'date': instance.date?.toIso8601String(),
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$CourseTypeImpl _$$CourseTypeImplFromJson(Map<String, dynamic> json) =>
    _$CourseTypeImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      description: json['description'] as String,
      courseTags: (json['courseTags'] as List<dynamic>)
          .map((e) => CourseForElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseTypeImplToJson(_$CourseTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'photo': instance.photo,
      'description': instance.description,
      'courseTags': instance.courseTags,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: json['id'] as int,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      endDate: json['endDate'],
      stuff: Stuff.fromJson(json['stuff'] as Map<String, dynamic>),
      face: Face.fromJson(json['face'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      practice: json['practice'] as int,
      isVerified: json['isVerified'] as bool,
      speciality: json['speciality'],
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'endDate': instance.endDate,
      'stuff': instance.stuff,
      'face': instance.face,
      'startDate': instance.startDate.toIso8601String(),
      'practice': instance.practice,
      'isVerified': instance.isVerified,
      'speciality': instance.speciality,
    };

_$FaceImpl _$$FaceImplFromJson(Map<String, dynamic> json) => _$FaceImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
      passport: json['passport'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$FaceImplToJson(_$FaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'tel1': instance.tel1,
      'tel2': instance.tel2,
      'passport': instance.passport,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'birthday': instance.birthday.toIso8601String(),
    };

_$StuffImpl _$$StuffImplFromJson(Map<String, dynamic> json) => _$StuffImpl(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$StuffImplToJson(_$StuffImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
