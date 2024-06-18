import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespondenRecord extends FirestoreRecord {
  RespondenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_responden" field.
  String? _namaResponden;
  String get namaResponden => _namaResponden ?? '';
  bool hasNamaResponden() => _namaResponden != null;

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

  // "rt" field.
  String? _rt;
  String get rt => _rt ?? '';
  bool hasRt() => _rt != null;

  // "rw" field.
  String? _rw;
  String get rw => _rw ?? '';
  bool hasRw() => _rw != null;

  // "caleg_2019" field.
  String? _caleg2019;
  String get caleg2019 => _caleg2019 ?? '';
  bool hasCaleg2019() => _caleg2019 != null;

  // "caleg_2024" field.
  String? _caleg2024;
  String get caleg2024 => _caleg2024 ?? '';
  bool hasCaleg2024() => _caleg2024 != null;

  // "posisi" field.
  LatLng? _posisi;
  LatLng? get posisi => _posisi;
  bool hasPosisi() => _posisi != null;

  // "dpt" field.
  String? _dpt;
  String get dpt => _dpt ?? '';
  bool hasDpt() => _dpt != null;

  // "tps" field.
  String? _tps;
  String get tps => _tps ?? '';
  bool hasTps() => _tps != null;

  // "waktu_simpan" field.
  DateTime? _waktuSimpan;
  DateTime? get waktuSimpan => _waktuSimpan;
  bool hasWaktuSimpan() => _waktuSimpan != null;

  // "nik" field.
  String? _nik;
  String get nik => _nik ?? '';
  bool hasNik() => _nik != null;

  // "no_kk" field.
  String? _noKk;
  String get noKk => _noKk ?? '';
  bool hasNoKk() => _noKk != null;

  // "jenis_kelamin" field.
  String? _jenisKelamin;
  String get jenisKelamin => _jenisKelamin ?? '';
  bool hasJenisKelamin() => _jenisKelamin != null;

  // "kenal_caleg" field.
  String? _kenalCaleg;
  String get kenalCaleg => _kenalCaleg ?? '';
  bool hasKenalCaleg() => _kenalCaleg != null;

  // "pilih_caleg" field.
  String? _pilihCaleg;
  String get pilihCaleg => _pilihCaleg ?? '';
  bool hasPilihCaleg() => _pilihCaleg != null;

  // "pasang_stiker" field.
  String? _pasangStiker;
  String get pasangStiker => _pasangStiker ?? '';
  bool hasPasangStiker() => _pasangStiker != null;

  // "partai_2019" field.
  String? _partai2019;
  String get partai2019 => _partai2019 ?? '';
  bool hasPartai2019() => _partai2019 != null;

  // "partai_2024" field.
  String? _partai2024;
  String get partai2024 => _partai2024 ?? '';
  bool hasPartai2024() => _partai2024 != null;

  // "id_relawan" field.
  String? _idRelawan;
  String get idRelawan => _idRelawan ?? '';
  bool hasIdRelawan() => _idRelawan != null;

  // "usia" field.
  String? _usia;
  String get usia => _usia ?? '';
  bool hasUsia() => _usia != null;

  // "foto_survey" field.
  String? _fotoSurvey;
  String get fotoSurvey => _fotoSurvey ?? '';
  bool hasFotoSurvey() => _fotoSurvey != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _namaResponden = snapshotData['nama_responden'] as String?;
    _nomerPonsel = snapshotData['nomer_ponsel'] as String?;
    _kabupaten = snapshotData['kabupaten'] as String?;
    _kecamatan = snapshotData['kecamatan'] as String?;
    _desa = snapshotData['desa'] as String?;
    _rt = snapshotData['rt'] as String?;
    _rw = snapshotData['rw'] as String?;
    _caleg2019 = snapshotData['caleg_2019'] as String?;
    _caleg2024 = snapshotData['caleg_2024'] as String?;
    _posisi = snapshotData['posisi'] as LatLng?;
    _dpt = snapshotData['dpt'] as String?;
    _tps = snapshotData['tps'] as String?;
    _waktuSimpan = snapshotData['waktu_simpan'] as DateTime?;
    _nik = snapshotData['nik'] as String?;
    _noKk = snapshotData['no_kk'] as String?;
    _jenisKelamin = snapshotData['jenis_kelamin'] as String?;
    _kenalCaleg = snapshotData['kenal_caleg'] as String?;
    _pilihCaleg = snapshotData['pilih_caleg'] as String?;
    _pasangStiker = snapshotData['pasang_stiker'] as String?;
    _partai2019 = snapshotData['partai_2019'] as String?;
    _partai2024 = snapshotData['partai_2024'] as String?;
    _idRelawan = snapshotData['id_relawan'] as String?;
    _usia = snapshotData['usia'] as String?;
    _fotoSurvey = snapshotData['foto_survey'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('responden');

  static Stream<RespondenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RespondenRecord.fromSnapshot(s));

  static Future<RespondenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RespondenRecord.fromSnapshot(s));

  static RespondenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RespondenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RespondenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RespondenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RespondenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RespondenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRespondenRecordData({
  String? namaResponden,
  String? nomerPonsel,
  String? kabupaten,
  String? kecamatan,
  String? desa,
  String? rt,
  String? rw,
  String? caleg2019,
  String? caleg2024,
  LatLng? posisi,
  String? dpt,
  String? tps,
  DateTime? waktuSimpan,
  String? nik,
  String? noKk,
  String? jenisKelamin,
  String? kenalCaleg,
  String? pilihCaleg,
  String? pasangStiker,
  String? partai2019,
  String? partai2024,
  String? idRelawan,
  String? usia,
  String? fotoSurvey,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_responden': namaResponden,
      'nomer_ponsel': nomerPonsel,
      'kabupaten': kabupaten,
      'kecamatan': kecamatan,
      'desa': desa,
      'rt': rt,
      'rw': rw,
      'caleg_2019': caleg2019,
      'caleg_2024': caleg2024,
      'posisi': posisi,
      'dpt': dpt,
      'tps': tps,
      'waktu_simpan': waktuSimpan,
      'nik': nik,
      'no_kk': noKk,
      'jenis_kelamin': jenisKelamin,
      'kenal_caleg': kenalCaleg,
      'pilih_caleg': pilihCaleg,
      'pasang_stiker': pasangStiker,
      'partai_2019': partai2019,
      'partai_2024': partai2024,
      'id_relawan': idRelawan,
      'usia': usia,
      'foto_survey': fotoSurvey,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class RespondenRecordDocumentEquality implements Equality<RespondenRecord> {
  const RespondenRecordDocumentEquality();

  @override
  bool equals(RespondenRecord? e1, RespondenRecord? e2) {
    return e1?.namaResponden == e2?.namaResponden &&
        e1?.nomerPonsel == e2?.nomerPonsel &&
        e1?.kabupaten == e2?.kabupaten &&
        e1?.kecamatan == e2?.kecamatan &&
        e1?.desa == e2?.desa &&
        e1?.rt == e2?.rt &&
        e1?.rw == e2?.rw &&
        e1?.caleg2019 == e2?.caleg2019 &&
        e1?.caleg2024 == e2?.caleg2024 &&
        e1?.posisi == e2?.posisi &&
        e1?.dpt == e2?.dpt &&
        e1?.tps == e2?.tps &&
        e1?.waktuSimpan == e2?.waktuSimpan &&
        e1?.nik == e2?.nik &&
        e1?.noKk == e2?.noKk &&
        e1?.jenisKelamin == e2?.jenisKelamin &&
        e1?.kenalCaleg == e2?.kenalCaleg &&
        e1?.pilihCaleg == e2?.pilihCaleg &&
        e1?.pasangStiker == e2?.pasangStiker &&
        e1?.partai2019 == e2?.partai2019 &&
        e1?.partai2024 == e2?.partai2024 &&
        e1?.idRelawan == e2?.idRelawan &&
        e1?.usia == e2?.usia &&
        e1?.fotoSurvey == e2?.fotoSurvey &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(RespondenRecord? e) => const ListEquality().hash([
        e?.namaResponden,
        e?.nomerPonsel,
        e?.kabupaten,
        e?.kecamatan,
        e?.desa,
        e?.rt,
        e?.rw,
        e?.caleg2019,
        e?.caleg2024,
        e?.posisi,
        e?.dpt,
        e?.tps,
        e?.waktuSimpan,
        e?.nik,
        e?.noKk,
        e?.jenisKelamin,
        e?.kenalCaleg,
        e?.pilihCaleg,
        e?.pasangStiker,
        e?.partai2019,
        e?.partai2024,
        e?.idRelawan,
        e?.usia,
        e?.fotoSurvey,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is RespondenRecord;
}
