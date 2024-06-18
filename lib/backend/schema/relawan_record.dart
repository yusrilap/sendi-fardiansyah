import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelawanRecord extends FirestoreRecord {
  RelawanRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nik" field.
  String? _nik;
  String get nik => _nik ?? '';
  bool hasNik() => _nik != null;

  // "nama_relawan" field.
  String? _namaRelawan;
  String get namaRelawan => _namaRelawan ?? '';
  bool hasNamaRelawan() => _namaRelawan != null;

  // "usia" field.
  int? _usia;
  int get usia => _usia ?? 0;
  bool hasUsia() => _usia != null;

  // "jenis_kelamin" field.
  String? _jenisKelamin;
  String get jenisKelamin => _jenisKelamin ?? '';
  bool hasJenisKelamin() => _jenisKelamin != null;

  // "nomer_ponsel" field.
  String? _nomerPonsel;
  String get nomerPonsel => _nomerPonsel ?? '';
  bool hasNomerPonsel() => _nomerPonsel != null;

  // "kabupaten" field.
  String? _kabupaten;
  String get kabupaten => _kabupaten ?? '';
  bool hasKabupaten() => _kabupaten != null;

  // "kecamatan" field.
  String? _kecamatan;
  String get kecamatan => _kecamatan ?? '';
  bool hasKecamatan() => _kecamatan != null;

  // "desa" field.
  String? _desa;
  String get desa => _desa ?? '';
  bool hasDesa() => _desa != null;

  // "dpt" field.
  String? _dpt;
  String get dpt => _dpt ?? '';
  bool hasDpt() => _dpt != null;

  // "tps" field.
  String? _tps;
  String get tps => _tps ?? '';
  bool hasTps() => _tps != null;

  // "no_kk" field.
  String? _noKk;
  String get noKk => _noKk ?? '';
  bool hasNoKk() => _noKk != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _nik = snapshotData['nik'] as String?;
    _namaRelawan = snapshotData['nama_relawan'] as String?;
    _usia = castToType<int>(snapshotData['usia']);
    _jenisKelamin = snapshotData['jenis_kelamin'] as String?;
    _nomerPonsel = snapshotData['nomer_ponsel'] as String?;
    _kabupaten = snapshotData['kabupaten'] as String?;
    _kecamatan = snapshotData['kecamatan'] as String?;
    _desa = snapshotData['desa'] as String?;
    _dpt = snapshotData['dpt'] as String?;
    _tps = snapshotData['tps'] as String?;
    _noKk = snapshotData['no_kk'] as String?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('relawan');

  static Stream<RelawanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RelawanRecord.fromSnapshot(s));

  static Future<RelawanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RelawanRecord.fromSnapshot(s));

  static RelawanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RelawanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RelawanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RelawanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RelawanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RelawanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRelawanRecordData({
  String? nik,
  String? namaRelawan,
  int? usia,
  String? jenisKelamin,
  String? nomerPonsel,
  String? kabupaten,
  String? kecamatan,
  String? desa,
  String? dpt,
  String? tps,
  String? noKk,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nik': nik,
      'nama_relawan': namaRelawan,
      'usia': usia,
      'jenis_kelamin': jenisKelamin,
      'nomer_ponsel': nomerPonsel,
      'kabupaten': kabupaten,
      'kecamatan': kecamatan,
      'desa': desa,
      'dpt': dpt,
      'tps': tps,
      'no_kk': noKk,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class RelawanRecordDocumentEquality implements Equality<RelawanRecord> {
  const RelawanRecordDocumentEquality();

  @override
  bool equals(RelawanRecord? e1, RelawanRecord? e2) {
    return e1?.nik == e2?.nik &&
        e1?.namaRelawan == e2?.namaRelawan &&
        e1?.usia == e2?.usia &&
        e1?.jenisKelamin == e2?.jenisKelamin &&
        e1?.nomerPonsel == e2?.nomerPonsel &&
        e1?.kabupaten == e2?.kabupaten &&
        e1?.kecamatan == e2?.kecamatan &&
        e1?.desa == e2?.desa &&
        e1?.dpt == e2?.dpt &&
        e1?.tps == e2?.tps &&
        e1?.noKk == e2?.noKk &&
        e1?.password == e2?.password;
  }

  @override
  int hash(RelawanRecord? e) => const ListEquality().hash([
        e?.nik,
        e?.namaRelawan,
        e?.usia,
        e?.jenisKelamin,
        e?.nomerPonsel,
        e?.kabupaten,
        e?.kecamatan,
        e?.desa,
        e?.dpt,
        e?.tps,
        e?.noKk,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is RelawanRecord;
}
