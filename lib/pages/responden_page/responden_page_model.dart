import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'responden_page_widget.dart' show RespondenPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RespondenPageModel extends FlutterFlowModel<RespondenPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nik_responden widget.
  FocusNode? nikRespondenFocusNode;
  TextEditingController? nikRespondenTextController;
  String? Function(BuildContext, String?)? nikRespondenTextControllerValidator;
  String? _nikRespondenTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'NIK responden tidak boleh kosong';
    }

    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for nama_responden widget.
  FocusNode? namaRespondenFocusNode;
  TextEditingController? namaRespondenTextController;
  String? Function(BuildContext, String?)? namaRespondenTextControllerValidator;
  String? _namaRespondenTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nama responden tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for no_kk widget.
  FocusNode? noKkFocusNode;
  TextEditingController? noKkTextController;
  String? Function(BuildContext, String?)? noKkTextControllerValidator;
  String? _noKkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No KK tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for jenis_kelamin widget.
  FormFieldController<String>? jenisKelaminValueController;
  // State field(s) for usia widget.
  FocusNode? usiaFocusNode;
  TextEditingController? usiaTextController;
  String? Function(BuildContext, String?)? usiaTextControllerValidator;
  String? _usiaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Usia tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for no_ponsel widget.
  FocusNode? noPonselFocusNode;
  TextEditingController? noPonselTextController;
  String? Function(BuildContext, String?)? noPonselTextControllerValidator;
  String? _noPonselTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No Handphone tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for rt widget.
  FocusNode? rtFocusNode;
  TextEditingController? rtTextController;
  String? Function(BuildContext, String?)? rtTextControllerValidator;
  String? _rtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'RT tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for rw widget.
  FocusNode? rwFocusNode;
  TextEditingController? rwTextController;
  String? Function(BuildContext, String?)? rwTextControllerValidator;
  String? _rwTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'RW tidak boleh kosong';
    }

    return null;
  }

  // State field(s) for tps widget.
  FocusNode? tpsFocusNode;
  TextEditingController? tpsTextController;
  String? Function(BuildContext, String?)? tpsTextControllerValidator;
  String? _tpsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'TPS tidak boleh kosong';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nikRespondenTextControllerValidator = _nikRespondenTextControllerValidator;
    namaRespondenTextControllerValidator =
        _namaRespondenTextControllerValidator;
    noKkTextControllerValidator = _noKkTextControllerValidator;
    usiaTextControllerValidator = _usiaTextControllerValidator;
    noPonselTextControllerValidator = _noPonselTextControllerValidator;
    rtTextControllerValidator = _rtTextControllerValidator;
    rwTextControllerValidator = _rwTextControllerValidator;
    tpsTextControllerValidator = _tpsTextControllerValidator;
  }

  @override
  void dispose() {
    nikRespondenFocusNode?.dispose();
    nikRespondenTextController?.dispose();

    namaRespondenFocusNode?.dispose();
    namaRespondenTextController?.dispose();

    noKkFocusNode?.dispose();
    noKkTextController?.dispose();

    usiaFocusNode?.dispose();
    usiaTextController?.dispose();

    noPonselFocusNode?.dispose();
    noPonselTextController?.dispose();

    rtFocusNode?.dispose();
    rtTextController?.dispose();

    rwFocusNode?.dispose();
    rwTextController?.dispose();

    tpsFocusNode?.dispose();
    tpsTextController?.dispose();
  }

  /// Additional helper methods.
  String? get jenisKelaminValue => jenisKelaminValueController?.value;
}
