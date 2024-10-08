import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _jwt = prefs.getString('ff_jwt') ?? _jwt;
    });
    _safeInit(() {
      _rememberMeEmail =
          prefs.getString('ff_rememberMeEmail') ?? _rememberMeEmail;
    });
    _safeInit(() {
      _rememberMePassword =
          prefs.getString('ff_rememberMePassword') ?? _rememberMePassword;
    });
    _safeInit(() {
      _cbpartnerid = prefs.getInt('ff_cbpartnerid') ?? _cbpartnerid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _jwt =
      'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJlZHkucHVyd2FudG8iLCJBRF9DbGllbnRfSUQiOjEwMDAwMDIsIkFEX1VzZXJfSUQiOjEwMDEyOTAsIkFEX1JvbGVfSUQiOjEwMDAxMjEsIkFEX09yZ19JRCI6MTAwMDAwNSwiTV9XYXJlaG91c2VfSUQiOjEwMDAwMDQsIkFEX0xhbmd1YWdlIjoiZW5fVVMiLCJBRF9TZXNzaW9uX0lEIjoxMjYwMzkyLCJpc3MiOiJpZGVtcGllcmUub3JnIiwiZXhwIjoxNzI2NTU4NTA4fQ.5GSP4MLqInJlwo2IDzjogVZLFkI8a0ohDkbLKT5bfXQ8ydQdDHaLAmzpPq8zhrV6uj2F_dtZV0-HegQA3dLQJg';
  String get jwt => _jwt;
  set jwt(String value) {
    _jwt = value;
    prefs.setString('ff_jwt', value);
  }

  String _rememberMeEmail = '';
  String get rememberMeEmail => _rememberMeEmail;
  set rememberMeEmail(String value) {
    _rememberMeEmail = value;
    prefs.setString('ff_rememberMeEmail', value);
  }

  String _rememberMePassword = '';
  String get rememberMePassword => _rememberMePassword;
  set rememberMePassword(String value) {
    _rememberMePassword = value;
    prefs.setString('ff_rememberMePassword', value);
  }

  int _cbpartnerid = 0;
  int get cbpartnerid => _cbpartnerid;
  set cbpartnerid(int value) {
    _cbpartnerid = value;
    prefs.setInt('ff_cbpartnerid', value);
  }

  String _activityTimeStart = '';
  String get activityTimeStart => _activityTimeStart;
  set activityTimeStart(String value) {
    _activityTimeStart = value;
  }

  String _activityTimeEnd = '';
  String get activityTimeEnd => _activityTimeEnd;
  set activityTimeEnd(String value) {
    _activityTimeEnd = value;
  }

  String _currentTime = '';
  String get currentTime => _currentTime;
  set currentTime(String value) {
    _currentTime = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
