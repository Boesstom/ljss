import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Master Data Group Code

class MasterDataGroup {
  static String getBaseUrl() =>
      'https://qetwbzijcztschwxxicr.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
  };
  static DataBongkarCall dataBongkarCall = DataBongkarCall();
  static DataDokumenCall dataDokumenCall = DataDokumenCall();
  static DataPartyCall dataPartyCall = DataPartyCall();
  static DataShipperCall dataShipperCall = DataShipperCall();
  static DataTruckCall dataTruckCall = DataTruckCall();
  static DataVendorCall dataVendorCall = DataVendorCall();
  static DataOrderCall dataOrderCall = DataOrderCall();
  static DataHutangCall dataHutangCall = DataHutangCall();
  static DataOrderSingleCall dataOrderSingleCall = DataOrderSingleCall();
  static DataHutangSingleCall dataHutangSingleCall = DataHutangSingleCall();
}

class DataBongkarCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Bongkar',
      apiUrl:
          '$baseUrl/md_data_bongkar?nama_data_bongkar=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataDokumenCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Dokumen',
      apiUrl:
          '$baseUrl/md_data_dokumen?nama_data_dokumen=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataPartyCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Party',
      apiUrl:
          '$baseUrl/md_data_party?jumlah_data_party=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataShipperCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Shipper',
      apiUrl:
          '$baseUrl/md_data_shipper?nama_data_shipper=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataTruckCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Truck',
      apiUrl: '$baseUrl//md_data_trucks',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DataVendorCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Vendor',
      apiUrl:
          '$baseUrl/md_data_vendor?nama_data_vendor=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataOrderCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Order',
      apiUrl: '$baseUrl/data_order?no_job=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataHutangCall {
  Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Hutang',
      apiUrl: '$baseUrl/data_hutang?no_job=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataOrderSingleCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Order Single',
      apiUrl: '$baseUrl/data_order?id_data_order=eq.$id&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

class DataHutangSingleCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = MasterDataGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Data Hutang Single',
      apiUrl: '$baseUrl/data_hutang?id_data_hutang=eq.$id&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFldHdiemlqY3p0c2Nod3h4aWNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTIyMTExODQsImV4cCI6MjAyNzc4NzE4NH0.wC_O-CNZk2Y3p8kqT3kn9nt0sUlbGOobazJ57K4RoZI',
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

/// End Master Data Group Code

/// Start b Group Code

class BGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End b Group Code

/// Start c Group Code

class CGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End c Group Code

/// Start d Group Code

class DGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End d Group Code

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
