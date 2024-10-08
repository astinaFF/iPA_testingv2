// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    String? nip,
    String? position,
    int? cbpartnerid,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _nip = nip,
        _position = position,
        _cbpartnerid = cbpartnerid;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "nip" field.
  String? _nip;
  String get nip => _nip ?? '';
  set nip(String? val) => _nip = val;

  bool hasNip() => _nip != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "cbpartnerid" field.
  int? _cbpartnerid;
  int get cbpartnerid => _cbpartnerid ?? 0;
  set cbpartnerid(int? val) => _cbpartnerid = val;

  void incrementCbpartnerid(int amount) => cbpartnerid = cbpartnerid + amount;

  bool hasCbpartnerid() => _cbpartnerid != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        nip: data['nip'] as String?,
        position: data['position'] as String?,
        cbpartnerid: castToType<int>(data['cbpartnerid']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'nip': _nip,
        'position': _position,
        'cbpartnerid': _cbpartnerid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'nip': serializeParam(
          _nip,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'cbpartnerid': serializeParam(
          _cbpartnerid,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        nip: deserializeParam(
          data['nip'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        cbpartnerid: deserializeParam(
          data['cbpartnerid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        nip == other.nip &&
        position == other.position &&
        cbpartnerid == other.cbpartnerid;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([uid, displayName, createTime, nip, position, cbpartnerid]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  String? nip,
  String? position,
  int? cbpartnerid,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      nip: nip,
      position: position,
      cbpartnerid: cbpartnerid,
    );
