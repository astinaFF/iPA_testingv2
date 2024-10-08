import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? convertDateTime(DateTime? datePickerResult) {
  try {
    final formattedDate =
        DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now());
    return '${formattedDate}Z';
  } catch (e) {
    print('Error formatting date: $e');
    return null;
  }
}

String? reverseDateTime(String? reverseTime) {
  // Function to change string time like "2022-01-04T20:30:00Z" to formatted time string "HH:mm"
  try {
    if (reverseTime == null) {
      return null;
    }

    final dateTime = DateTime.parse(reverseTime);
    final formattedTime = DateFormat('HH:mm').format(dateTime);

    return formattedTime; // Return as string
  } catch (e) {
    print('Error parsing date: $e');
    return null;
  }
}
