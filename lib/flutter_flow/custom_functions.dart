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
import '/auth/firebase_auth/auth_util.dart';

String somarValorLiquido(List<double>? cartItemsTotal) {
  final formatter = new NumberFormat("#,##0.00", "pt_BR");
  double _total = cartItemsTotal!
      .fold(0.0, (double total, double subtotal) => subtotal + total);
  _total = double.parse(_total.toStringAsFixed(2));
  String resultado = formatter.format(_total);
  return "R\$ " + resultado;
}

String doubleReal(double? valor) {
  var config = NumberFormat.currency(locale: 'pt_BR', symbol: '');
  return 'R\$' + config.format(valor);
}

int atraso(
  DateTime tempoDefinido,
  DateTime agora,
) {
  // diferença de dois tempo em minutos
  return (agora.difference(tempoDefinido).inMinutes);
}

double doublenegativo(double cmpo) {
  // alterar número para negativo
  if (cmpo > 0.0) {
    return -cmpo;
  } else {
    return cmpo;
  }
}

String dataparastring(DateTime campo) {
  // data para string DDmmAAAA
  print("Boats");
  // print(campo.day.toString().padLeft(2, '0'));
  // print(campo.month.toString().padLeft(2, '0'));
  // print(campo.year.toString());
  // return campo.day.toString().padLeft(2, '0') +campo.month.toString().padLeft(2, '0') +campo.year.toString();
  return """${campo.day.toString().padLeft(2, '0')}/${campo.month.toString().padLeft(2, '0')}/${campo.year.toString()}""";
}

String? distancebetweenlat(
  LatLng? lat1,
  LatLng? lat2,
) {
  // calculate a distance between lat1 to lat2
  final double earthRadius = 6371.0;
  final double lat1Radians = math.pi * lat1!.latitude / 180.0;
  final double lat2Radians = math.pi * lat2!.latitude / 180.0;
  final double deltaLatRadians =
      math.pi * (lat2.latitude - lat1.latitude) / 180.0;
  final double deltaLngRadians =
      math.pi * (lat2.longitude - lat1.longitude) / 180.0;

  final double a =
      math.sin(deltaLatRadians / 2) * math.sin(deltaLatRadians / 2) +
          math.cos(lat1Radians) *
              math.cos(lat2Radians) *
              math.sin(deltaLngRadians / 2) *
              math.sin(deltaLngRadians / 2);
  final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  final double distance = earthRadius * c;

  return distance.toStringAsFixed(2);
}

double? dbtwint(
  LatLng? lat1,
  LatLng? lat2,
) {
  // calculate a distance between lat1 to lat2
  final double earthRadius = 6371.0;
  final double lat1Radians = math.pi * lat1!.latitude / 180.0;
  final double lat2Radians = math.pi * lat2!.latitude / 180.0;
  final double deltaLatRadians =
      math.pi * (lat2.latitude - lat1.latitude) / 180.0;
  final double deltaLngRadians =
      math.pi * (lat2.longitude - lat1.longitude) / 180.0;

  final double a =
      math.sin(deltaLatRadians / 2) * math.sin(deltaLatRadians / 2) +
          math.cos(lat1Radians) *
              math.cos(lat2Radians) *
              math.sin(deltaLngRadians / 2) *
              math.sin(deltaLngRadians / 2);
  final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  final double distance = earthRadius * c;

  return distance;
}

double? somamedia(List<double>? notas) {
  // return a sum of notas
  if (notas == null || notas.isEmpty) {
    return null;
  }
  double sum = 0;
  for (double nota in notas) {
    sum += nota;
  }
  return sum;
}
