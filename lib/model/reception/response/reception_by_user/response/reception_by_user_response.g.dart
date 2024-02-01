// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reception_by_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceptionByUserResponseImpl _$$ReceptionByUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceptionByUserResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ReceptionByUserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReceptionByUserResponseImplToJson(
        _$ReceptionByUserResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ReceptionByUserDataImpl _$$ReceptionByUserDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceptionByUserDataImpl(
      id: json['id'] as int,
      userInfo: AccountData.fromJson(json['userInfo'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      courseName: json['courseName'] as String,
      receptionNumber: json['receptionNumber'] as String,
      courseFor: Course.fromJson(json['courseFor'] as Map<String, dynamic>),
      courseType:
          CourseType.fromJson(json['courseType'] as Map<String, dynamic>),
      employee: Employee.fromJson(json['employee'] as Map<String, dynamic>),
      description: json['description'],
    );

Map<String, dynamic> _$$ReceptionByUserDataImplToJson(
        _$ReceptionByUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userInfo': instance.userInfo,
      'date': instance.date.toIso8601String(),
      'courseName': instance.courseName,
      'receptionNumber': instance.receptionNumber,
      'courseFor': instance.courseFor,
      'courseType': instance.courseType,
      'employee': instance.employee,
      'description': instance.description,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'description': instance.description,
    };

_$CourseTypeImpl _$$CourseTypeImplFromJson(Map<String, dynamic> json) =>
    _$CourseTypeImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      courseTags: (json['courseTags'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CourseTypeImplToJson(_$CourseTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'photo': instance.photo,
      'courseTags': instance.courseTags,
      'description': instance.description,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: json['id'] as int,
      face: Face.fromJson(json['face'] as Map<String, dynamic>),
      about: json['about'] as String?,
      endDate: json['endDate'],
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>),
      stuff: Stuff.fromJson(json['stuff'] as Map<String, dynamic>),
      practice: json['practice'] as int,
      isVerified: json['isVerified'] as bool,
      startDate: DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'face': instance.face,
      'about': instance.about,
      'endDate': instance.endDate,
      'photo': instance.photo,
      'stuff': instance.stuff,
      'practice': instance.practice,
      'isVerified': instance.isVerified,
      'startDate': instance.startDate.toIso8601String(),
    };

_$FaceImpl _$$FaceImplFromJson(Map<String, dynamic> json) => _$FaceImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String?,
      birthday: DateTime.parse(json['birthday'] as String),
      passport: json['passport'] as String,
    );

Map<String, dynamic> _$$FaceImplToJson(_$FaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'tel1': instance.tel1,
      'tel2': instance.tel2,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'birthday': instance.birthday.toIso8601String(),
      'passport': instance.passport,
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
