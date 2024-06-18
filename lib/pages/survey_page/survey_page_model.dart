import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'survey_page_widget.dart' show SurveyPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SurveyPageModel extends FlutterFlowModel<SurveyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for radio_kenal_caleg widget.
  FormFieldController<String>? radioKenalCalegValueController;
  // State field(s) for radio_bersedia_memilih widget.
  FormFieldController<String>? radioBersediaMemilihValueController;
  // State field(s) for drop_pilwalkot2020 widget.
  String? dropPilwalkot2020Value;
  FormFieldController<String>? dropPilwalkot2020ValueController;
  // State field(s) for drop_partai2024 widget.
  String? dropPartai2024Value;
  FormFieldController<String>? dropPartai2024ValueController;
  // State field(s) for drop_pilwalkot2024 widget.
  String? dropPilwalkot2024Value;
  FormFieldController<String>? dropPilwalkot2024ValueController;
  // State field(s) for drop_kegiatan widget.
  String? dropKegiatanValue;
  FormFieldController<String>? dropKegiatanValueController;
  // State field(s) for radio_pasangmedia widget.
  FormFieldController<String>? radioPasangmediaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioKenalCalegValue => radioKenalCalegValueController?.value;
  String? get radioBersediaMemilihValue =>
      radioBersediaMemilihValueController?.value;
  String? get radioPasangmediaValue => radioPasangmediaValueController?.value;
}
