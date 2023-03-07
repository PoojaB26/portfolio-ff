import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ytUrl1 = '';
  String get ytUrl1 => _ytUrl1;
  set ytUrl1(String _value) {
    _ytUrl1 = _value;
  }

  List<String> _videoIdList = ['0B0cSbKSThI', 'iqtuxvERRBw'];
  List<String> get videoIdList => _videoIdList;
  set videoIdList(List<String> _value) {
    _videoIdList = _value;
  }

  void addToVideoIdList(String _value) {
    _videoIdList.add(_value);
  }

  void removeFromVideoIdList(String _value) {
    _videoIdList.remove(_value);
  }

  void removeAtIndexFromVideoIdList(int _index) {
    _videoIdList.removeAt(_index);
  }

  String _path = 'https://picsum.photos/seed/600/600';
  String get path => _path;
  set path(String _value) {
    _path = _value;
  }

  bool _isDark = false;
  bool get isDark => _isDark;
  set isDark(bool _value) {
    _isDark = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
