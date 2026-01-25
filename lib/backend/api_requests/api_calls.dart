import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class VehicleRegCallCall {
  static Future<ApiCallResponse> call({
    String? registration = 'YL64FCU',
  }) async {
    final ffApiRequestBody = '''
{
  "registrationNum": "${escapeStringForJson(registration)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VehicleRegCall',
      apiUrl:
          'https://btvwzlnuqyuawapthbrg.supabase.co/functions/v1/get_vehicle_details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ0dnd6bG51cXl1YXdhcHRoYnJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5Mzk1OTEsImV4cCI6MjA4MzUxNTU5MX0.ld6HhvKmEAMhnvk0qfCGM2hQsFNlcbHIzihSc6IyX5Q',
        'Content-Type': 'application/json',
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

  static String? carReg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.registrationNumber''',
      ));
  static String? carTax(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.taxDueDate''',
      ));
  static String? carMake(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.make''',
      ));
  static int? carYear(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.yearOfManufacture''',
      ));
  static String? carFuel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fuelType''',
      ));
  static String? carColour(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.colour''',
      ));
  static String? carMOT(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.motExpiryDate''',
      ));
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
