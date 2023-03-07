import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<String> getUrlList(List<String> videoIds) {
  List<String> videoUrlList = videoIds
      .map(
        (e) => "https://i.ytimg.com/vi/${e}/maxresdefault.jpg",
      )
      .toList();
  return videoUrlList;
}
