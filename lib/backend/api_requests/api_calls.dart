import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Astina Group Code

class AstinaGroup {
  static String getBaseUrl({
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) =>
      'https://bnidev.astina.co.id:443/api/v1/models';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static GetUserProfileCall getUserProfileCall = GetUserProfileCall();
  static ListMechanicActivityCorrectiveCall listMechanicActivityCorrectiveCall =
      ListMechanicActivityCorrectiveCall();
  static ListMechanicActivityPMCall listMechanicActivityPMCall =
      ListMechanicActivityPMCall();
  static ListMechanicActivityOtherCall listMechanicActivityOtherCall =
      ListMechanicActivityOtherCall();
  static ActivityByNameCall activityByNameCall = ActivityByNameCall();
  static MasterActivityCall masterActivityCall = MasterActivityCall();
}

class GetUserProfileCall {
  Future<ApiCallResponse> call({
    String? aDUserID = '1000581',
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Profile',
      apiUrl:
          '${baseUrl}/AD_User/${aDUserID}?\$expand=C_BPartner_ID(\$select=value,name,description)&\$select=Name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {
        'AD_User_ID': aDUserID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nip(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.C_BPartner_ID.Value''',
      ));
  String? empname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.C_BPartner_ID.Name''',
      ));
  String? position(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.C_BPartner_ID.Description''',
      ));
  int? cbpartnerid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.C_BPartner_ID.id''',
      ));
}

class ListMechanicActivityCorrectiveCall {
  Future<ApiCallResponse> call({
    int? cBPartnerID = 1001484,
    int? stop = 10,
    int? skip = 0,
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Mechanic ActivityCorrective',
      apiUrl:
          '${baseUrl}/MP_Mechanic_Activity?\$filter=C_BPartner_ID eq ${cBPartnerID} AND C_DocType_ID eq 1000156&\$select=MP_Activity_ID,MP_WorkOrder_ID,A_Asset_ID,Description,WorkProblem,Time_Start,Time_End&\$orderby=Time_Start desc&\$top=${stop}&\$skip=${skip}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {
        'C_BPartner_ID': cBPartnerID,
        'stop': stop,
        'skip': skip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? activity(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].MP_Activity_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? unitno(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].A_Asset_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? workaction(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? mpActivityList(dynamic response) => getJsonField(
        response,
        r'''$.records[:]''',
        true,
      ) as List?;
  List<String>? timeStart(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_Start''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? timeEnd(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_End''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListMechanicActivityPMCall {
  Future<ApiCallResponse> call({
    int? cBPartnerID = 1001484,
    int? stop,
    int? skip,
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Mechanic ActivityPM',
      apiUrl:
          '${baseUrl}/MP_Mechanic_Activity?\$filter=C_BPartner_ID eq ${cBPartnerID} AND C_DocType_ID eq 1000160&\$select=MP_Activity_ID,MP_WorkOrder_ID,A_Asset_ID,Description,WorkProblem,Time_Start,Time_End&\$orderby=Time_Start desc&\$top=${stop}&\$skip=${skip}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {
        'C_BPartner_ID': cBPartnerID,
        'stop': stop,
        'skip': skip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? activity(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].MP_Activity_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? unitno(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].A_Asset_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? workaction(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? mpActivityList(dynamic response) => getJsonField(
        response,
        r'''$.records[:]''',
        true,
      ) as List?;
  List<String>? timeStart(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_Start''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? timeEnd(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_End''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListMechanicActivityOtherCall {
  Future<ApiCallResponse> call({
    int? cBPartnerID = 1001484,
    int? stop,
    int? skip,
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'List Mechanic ActivityOther',
      apiUrl:
          '${baseUrl}/MP_Mechanic_Activity?\$filter=C_BPartner_ID eq ${cBPartnerID}  AND (C_DocType_ID neq 1000156 AND C_DocType_ID neq 1000160)&\$select=MP_Activity_ID,MP_WorkOrder_ID,A_Asset_ID,Description,WorkProblem,Time_Start,Time_End&\$orderby=Time_Start desc&\$top=${stop}&\$skip=${skip}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {
        'C_BPartner_ID': cBPartnerID,
        'stop': stop,
        'skip': skip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? activity(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].MP_Activity_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? unitno(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].A_Asset_ID.identifier''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? workaction(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? mpActivityList(dynamic response) => getJsonField(
        response,
        r'''$.records[:]''',
        true,
      ) as List?;
  List<String>? timeStart(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_Start''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? timeEnd(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Time_End''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ActivityByNameCall {
  Future<ApiCallResponse> call({
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Activity By Name',
      apiUrl:
          '${baseUrl}/models/MP_Activity?\$filter=contains(tolower(name),\'adj\')&\$select=Name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MasterActivityCall {
  Future<ApiCallResponse> call({
    String? jwt =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDU0MSwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNzA4MzY5M30.v7drqRRsNBeN-rltz5nTc9RRwQ7roVo1Sw_IaWP0yO8n3vj5XDPcUKC6NNoswVJdtm_6uTqkQUFOy7a0Z9r_eQ',
  }) async {
    final baseUrl = AstinaGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Master Activity',
      apiUrl: '${baseUrl}/MP_Activity?columns=activity_code,name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? masterActivityId(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? activityName(dynamic response) => (getJsonField(
        response,
        r'''$.records[:].Name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End Astina Group Code

/// Start Work Order Group Code

class WorkOrderGroup {
  static String getBaseUrl({
    String? authToken =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDQ3OCwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNjc2MjgxMn0.yIdOm82FHM209Og6OGZiDhyw7ZgvvAPsYWbohhNK4u-oL2Ihg7qrwrkxjG4ofpqyp6i63QuYYEbZNq_mt1wxtQ',
  }) =>
      'https://bnidev.astina.co.id:443/api/v1/models/MP_WorkOrder';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [authToken]',
  };
  static WorkOrderByWoNoCall workOrderByWoNoCall = WorkOrderByWoNoCall();
  static GetWorkOrderCall getWorkOrderCall = GetWorkOrderCall();
}

class WorkOrderByWoNoCall {
  Future<ApiCallResponse> call({
    String? wono = '24012261',
    String? authToken =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDQ3OCwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNjc2MjgxMn0.yIdOm82FHM209Og6OGZiDhyw7ZgvvAPsYWbohhNK4u-oL2Ihg7qrwrkxjG4ofpqyp6i63QuYYEbZNq_mt1wxtQ',
  }) async {
    final baseUrl = WorkOrderGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Work Order By Wo No',
      apiUrl:
          '${baseUrl}?\$filter=contains(tolower(documentno),\'${wono}\')&\$select=documentno,description&\$expand=A_Asset_ID(\$select=value)',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'wono': wono,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWorkOrderCall {
  Future<ApiCallResponse> call({
    int? mPWorkOrderStatusID = 1000003,
    String? startDate = '2024-05-01',
    String? endDate = '2024-08-01',
    String? authToken =
        'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0cmkud2lkb2RvIiwiQURfQ2xpZW50X0lEIjoxMDAwMDAyLCJBRF9Vc2VyX0lEIjoxMDAwNTgxLCJBRF9Sb2xlX0lEIjoxMDAwMTIxLCJBRF9PcmdfSUQiOjEwMDAwMDUsIk1fV2FyZWhvdXNlX0lEIjoxMDAwMDA0LCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTI2MDQ3OCwiaXNzIjoiaWRlbXBpZXJlLm9yZyIsImV4cCI6MTcyNjc2MjgxMn0.yIdOm82FHM209Og6OGZiDhyw7ZgvvAPsYWbohhNK4u-oL2Ihg7qrwrkxjG4ofpqyp6i63QuYYEbZNq_mt1wxtQ',
  }) async {
    final baseUrl = WorkOrderGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getWorkOrder',
      apiUrl:
          '${baseUrl}?\$filter=MP_WorkOrderStatus_ID eq ${mPWorkOrderStatusID} AND OrderDate ge \'${startDate}\' AND OrderDate le \'${endDate}\'&\$select=DocumentNo,OrderDate,Description&\$expand=A_Asset_ID(\$select=Value),C_DocType_ID(\$select=Name)',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'MP_WorkOrderStatus_ID': mPWorkOrderStatusID,
        'StartDate': startDate,
        'EndDate': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Work Order Group Code

class LoginCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    int? clientId = 1000002,
    int? roleId = 1000121,
    int? organizationId = 1000005,
    int? warehouseId = 1000004,
    String? language = 'en_US',
  }) async {
    final ffApiRequestBody = '''
{
  "userName": "${userName}",
  "password": "${password}",
  "parameters": {
    "clientId": "${clientId}",
    "roleId": "${roleId}",
    "organizationId": "${organizationId}",
    "warehouseId": "${warehouseId}",
    "language": "${language}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://bnidev.astina.co.id:443/api/v1/auth/tokens',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userId''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? refreshtoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
}

class PostMechanicActivityCall {
  static Future<ApiCallResponse> call({
    String? aDClientID = '',
    String? aDOrgID = '',
    String? created = '',
    String? cBPartnerID = '',
    String? updated = '',
    String? mPWorkOrderID = '',
    String? mPActivityID = '',
    String? timeStart = '',
    String? timeEnd = '',
    String? description = '',
    String? workProblem = '',
    String? jwt = '',
    String? dateTrx = '',
  }) async {
    final ffApiRequestBody = '''
{
  "AD_Client_ID": "${aDClientID}",
  "AD_Org_ID": "${aDOrgID}",
  "Created": "${created}",
  "Updated": "${updated}",
  "IsActive": "Y",
  "MP_WorkOrder_ID": ${mPWorkOrderID},
  "MP_Activity_ID": ${mPActivityID},
  "C_BPartner_ID": ${cBPartnerID},
  "Time_Start": "${timeStart}",
  "Time_End": "${timeEnd}",
  "Description": "${description}",
  "WorkProblem": "${workProblem}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostMechanicActivity',
      apiUrl:
          'https://bnidev.astina.co.id:443/api/v1/models/MP_Mechanic_Activity',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${jwt}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
