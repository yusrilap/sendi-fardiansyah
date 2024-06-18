import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic test(dynamic respon) {
  return respon['user']['nik'];
}

String getnamarelawan(dynamic respon) {
  return respon['user']['name'];
}

String getkecamatan(dynamic respon) {
  return respon['user']['subdistrict']['name'];
}

String getkabupaten(dynamic respon) {
  return respon['user']['city']['name'];
}

String getdesa(dynamic respon) {
  return respon['user']['village']['name'];
}

String gettps(dynamic respon) {
  return respon['user']['tps'];
}

String getnotelp(dynamic respon) {
  return respon['user']['phone_number'];
}

String getjk(dynamic respon) {
  return respon['user']['gender'];
}

String getresponden(List<String> listresponden) {
  return listresponden.length.toString();
}

String? getImage(FFUploadedFile imageFile) {
  List<int>? imageBytes = imageFile.bytes;
  if (imageBytes != null) {
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }
}
