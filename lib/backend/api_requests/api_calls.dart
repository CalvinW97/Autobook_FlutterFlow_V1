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
  "registration": "${escapeStringForJson(registration)}"
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

class GarageLocationCallCall {
  static Future<ApiCallResponse> call({
    double? userLat,
    double? userLon,
    double? maxDist,
    String? search = '',
    bool? isInstantBooking,
    String? vSize = '',
    String? vFuel = '',
    String? vCcRange = '',
    bool? vIsPremium,
  }) async {
    final ffApiRequestBody = '''
{
  "user_lat": ${userLat},
  "user_lng": ${userLon},
  "search_service_type": "${escapeStringForJson(search)}",
  "max_dist_miles": ${maxDist},
  "v_size":"${escapeStringForJson(vSize)}",
  "v_fuel":"${escapeStringForJson(vFuel)}",
  "v_cc_range":"${escapeStringForJson(vCcRange)}",
  "v_is_premium":${vIsPremium},
  "p_is_instant_booking": ${isInstantBooking}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GarageLocationCall',
      apiUrl:
          'https://btvwzlnuqyuawapthbrg.supabase.co/rest/v1/rpc/search_garages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ0dnd6bG51cXl1YXdhcHRoYnJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5Mzk1OTEsImV4cCI6MjA4MzUxNTU5MX0.ld6HhvKmEAMhnvk0qfCGM2hQsFNlcbHIzihSc6IyX5Q',
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ0dnd6bG51cXl1YXdhcHRoYnJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5Mzk1OTEsImV4cCI6MjA4MzUxNTU5MX0.ld6HhvKmEAMhnvk0qfCGM2hQsFNlcbHIzihSc6IyX5Q',
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

  static List<int>? distanceMiles(dynamic response) => (getJsonField(
        response,
        r'''$[:].dist_miles''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? businessNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].business_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? garageIDs(dynamic response) => (getJsonField(
        response,
        r'''$[:].garage_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? matchedServices(dynamic response) => getJsonField(
        response,
        r'''$[:].matched_services''',
        true,
      ) as List?;
  static List<double>? prices(dynamic response) => (getJsonField(
        response,
        r'''$[:].matched_services[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? serviceIDs(dynamic response) => (getJsonField(
        response,
        r'''$[:].matched_services[:].service_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? serviceNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].matched_services[:].service_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? minServicePrices(dynamic response) => (getJsonField(
        response,
        r'''$[:].min_service_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class GetServiceOfferingsCallCall {
  static Future<ApiCallResponse> call({
    String? garageId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "target_garage_id": "${escapeStringForJson(garageId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetServiceOfferingsCall',
      apiUrl:
          'https://btvwzlnuqyuawapthbrg.supabase.co/rest/v1/rpc/get_garage_services',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ0dnd6bG51cXl1YXdhcHRoYnJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5Mzk1OTEsImV4cCI6MjA4MzUxNTU5MX0.ld6HhvKmEAMhnvk0qfCGM2hQsFNlcbHIzihSc6IyX5Q',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ0dnd6bG51cXl1YXdhcHRoYnJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5Mzk1OTEsImV4cCI6MjA4MzUxNTU5MX0.ld6HhvKmEAMhnvk0qfCGM2hQsFNlcbHIzihSc6IyX5Q',
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
