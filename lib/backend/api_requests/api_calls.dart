import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchUsersCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
    String? userID = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchUsers',
      apiUrl:
          'https://fpafebzgyihgyjewkuye.supabase.co/rest/v1/members?full_name=ilike.*${searchString}*&id=not.eq.${userID}&user_id=not.is.null&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZwYWZlYnpneWloZ3lqZXdrdXllIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDA5NDUxNjksImV4cCI6MjA1NjUyMTE2OX0.0-R3pBTuMCF8vA6lgWWKDkwvAAR2MgIAhK8_UwhRMbE',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZwYWZlYnpneWloZ3lqZXdrdXllIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDA5NDUxNjksImV4cCI6MjA1NjUyMTE2OX0.0-R3pBTuMCF8vA6lgWWKDkwvAAR2MgIAhK8_UwhRMbE',
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
