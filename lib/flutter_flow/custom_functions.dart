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

String? ageCalculator(DateTime? date) {
  if (date == null) {
    return null; // Return null if no date is provided
  }

  final now = DateTime.now();
  int age = now.year - date.year;

  // Adjust age if the current date hasn't reached the birth date of this year
  if (now.month < date.month ||
      (now.month == date.month && now.day < date.day)) {
    age--;
  }

  // Check if age is less than 1 after adjustment
  if (age < 1) {
    return '<1';
  }

  return age.toString();
}
