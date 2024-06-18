import 'package:collection/collection.dart';

enum KenalCaleg {
  ya,
  tidak,
}

enum PilihCaleg {
  ya,
  tidak,
}

enum PasangStiker {
  ya,
  tidak,
}

enum JenisKelamin {
  L,
  P,
}

enum Partai {
  Berkarya,
  Demokrat,
  Garuda,
  Gerindra,
  Golkar,
  Hanura,
  Nasdem,
  PAN,
  PDIP,
  Perindo,
  PKB,
  PKS,
  PPP,
  PSI,
}

enum Kegiatan {
  PengobatanGratis,
  SunatanMasal,
  Sembako,
  Audiesi,
}

enum MediaSosial {
  ya,
  tidak,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (KenalCaleg):
      return KenalCaleg.values.deserialize(value) as T?;
    case (PilihCaleg):
      return PilihCaleg.values.deserialize(value) as T?;
    case (PasangStiker):
      return PasangStiker.values.deserialize(value) as T?;
    case (JenisKelamin):
      return JenisKelamin.values.deserialize(value) as T?;
    case (Partai):
      return Partai.values.deserialize(value) as T?;
    case (Kegiatan):
      return Kegiatan.values.deserialize(value) as T?;
    case (MediaSosial):
      return MediaSosial.values.deserialize(value) as T?;
    default:
      return null;
  }
}
