// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_with_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseWithPriceResponseImpl _$$CourseWithPriceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseWithPriceResponseImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => CourseWithPriceData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseWithPriceResponseImplToJson(
        _$CourseWithPriceResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CourseWithPriceDataImpl _$$CourseWithPriceDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseWithPriceDataImpl(
      course: Course.fromJson(json['course'] as Map<String, dynamic>),
      mentor: json['mentor'] == null
          ? null
          : Mentor.fromJson(json['mentor'] as Map<String, dynamic>),
      price: json['price'],
      receptionCounter: ReceptionCounter.fromJson(
          json['reception_counter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseWithPriceDataImplToJson(
        _$CourseWithPriceDataImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'mentor': instance.mentor,
      'price': instance.price,
      'reception_counter': instance.receptionCounter,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      id: json['id'] as int,
<<<<<<< HEAD
=======
      status: json['status'] as bool,
>>>>>>> 34e68bf652839bdede3f7236c412bc26779659df
      description: json['description'] as String,
      courseFor:
          CourseForElement.fromJson(json['courseFor'] as Map<String, dynamic>),
      courseType:
          CourseType.fromJson(json['courseType'] as Map<String, dynamic>),
      previewPhoto:
          PreviewPhoto.fromJson(json['previewPhoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
<<<<<<< HEAD
=======
      'status': instance.status,
>>>>>>> 34e68bf652839bdede3f7236c412bc26779659df
      'description': instance.description,
      'courseFor': instance.courseFor,
      'courseType': instance.courseType,
      'previewPhoto': instance.previewPhoto,
    };

_$CourseForElementImpl _$$CourseForElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseForElementImpl(
      name: json['name'] as String,
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CourseForElementImplToJson(
        _$CourseForElementImpl instance) =>
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
      photo: PreviewPhoto.fromJson(json['photo'] as Map<String, dynamic>),
      courseTags: (json['courseTags'] as List<dynamic>)
          .map((e) => CourseForElement.fromJson(e as Map<String, dynamic>))
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

_$PreviewPhotoImpl _$$PreviewPhotoImplFromJson(Map<String, dynamic> json) =>
    _$PreviewPhotoImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PreviewPhotoImplToJson(_$PreviewPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$MentorImpl _$$MentorImplFromJson(Map<String, dynamic> json) => _$MentorImpl(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => PreviewPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      employee: Employee.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MentorImplToJson(_$MentorImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
      'employee': instance.employee,
    };

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: json['id'] as int,
      photo: PreviewPhoto.fromJson(json['photo'] as Map<String, dynamic>),
      endDate: DateTime.parse(json['endDate'] as String),
      stuff: Stuff.fromJson(json['stuff'] as Map<String, dynamic>),
      face: Face.fromJson(json['face'] as Map<String, dynamic>),
      about: json['about'],
      startDate: DateTime.parse(json['startDate'] as String),
      practice: json['practice'] as int,
      isVerified: json['isVerified'],
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'endDate': instance.endDate.toIso8601String(),
      'stuff': instance.stuff,
      'face': instance.face,
      'about': instance.about,
      'startDate': instance.startDate.toIso8601String(),
      'practice': instance.practice,
      'isVerified': instance.isVerified,
    };

_$FaceImpl _$$FaceImplFromJson(Map<String, dynamic> json) => _$FaceImpl(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      tel1: json['tel1'] as String,
      tel2: json['tel2'] as String,
      lastname: json['lastname'] as String,
      middlename: json['middlename'] as String,
      passport: json['passport'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      firstname: json['firstname'] as String,
    );

Map<String, dynamic> _$$FaceImplToJson(_$FaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'tel1': instance.tel1,
      'tel2': instance.tel2,
      'lastname': instance.lastname,
      'middlename': instance.middlename,
      'passport': instance.passport,
      'birthday': instance.birthday.toIso8601String(),
      'firstname': instance.firstname,
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

_$ReceptionCounterImpl _$$ReceptionCounterImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceptionCounterImpl(
      totalCount: json['totalCount'] as int,
      activeCount: json['activeCount'] as int,
      inactiveCount: json['inactiveCount'] as int,
    );

Map<String, dynamic> _$$ReceptionCounterImplToJson(
        _$ReceptionCounterImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'activeCount': instance.activeCount,
      'inactiveCount': instance.inactiveCount,
    };
