// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespondenStruct extends FFFirebaseStruct {
  RespondenStruct({
    String? nik,
    String? password,
    String? photos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nik = nik,
        _password = password,
        _photos = photos,
        super(firestoreUtilData);

  // "nik" field.
  String? _nik;
  String get nik => _nik ?? '';
  set nik(String? val) => _nik = val;

  bool hasNik() => _nik != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "photos" field.
  String? _photos;
  String get photos => _photos ?? '';
  set photos(String? val) => _photos = val;

  bool hasPhotos() => _photos != null;

  static RespondenStruct fromMap(Map<String, dynamic> data) => RespondenStruct(
        nik: data['nik'] as String?,
        password: data['password'] as String?,
        photos: data['photos'] as String?,
      );

  static RespondenStruct? maybeFromMap(dynamic data) => data is Map
      ? RespondenStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nik': _nik,
        'password': _password,
        'photos': _photos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nik': serializeParam(
          _nik,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'photos': serializeParam(
          _photos,
          ParamType.String,
        ),
      }.withoutNulls;

  static RespondenStruct fromSerializableMap(Map<String, dynamic> data) =>
      RespondenStruct(
        nik: deserializeParam(
          data['nik'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        photos: deserializeParam(
          data['photos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RespondenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RespondenStruct &&
        nik == other.nik &&
        password == other.password &&
        photos == other.photos;
  }

  @override
  int get hashCode => const ListEquality().hash([nik, password, photos]);
}

RespondenStruct createRespondenStruct({
  String? nik,
  String? password,
  String? photos,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RespondenStruct(
      nik: nik,
      password: password,
      photos: photos,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RespondenStruct? updateRespondenStruct(
  RespondenStruct? responden, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    responden
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRespondenStructData(
  Map<String, dynamic> firestoreData,
  RespondenStruct? responden,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (responden == null) {
    return;
  }
  if (responden.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && responden.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final respondenData = getRespondenFirestoreData(responden, forFieldValue);
  final nestedData = respondenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = responden.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRespondenFirestoreData(
  RespondenStruct? responden, [
  bool forFieldValue = false,
]) {
  if (responden == null) {
    return {};
  }
  final firestoreData = mapToFirestore(responden.toMap());

  // Add any Firestore field values
  responden.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRespondenListFirestoreData(
  List<RespondenStruct>? respondens,
) =>
    respondens?.map((e) => getRespondenFirestoreData(e, true)).toList() ?? [];
