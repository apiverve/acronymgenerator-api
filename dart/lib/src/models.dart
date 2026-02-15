/// Response models for the Acronym Generator API.

/// API Response wrapper.
class AcronymgeneratorResponse {
  final String status;
  final dynamic error;
  final AcronymgeneratorData? data;

  AcronymgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AcronymgeneratorResponse.fromJson(Map<String, dynamic> json) => AcronymgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AcronymgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Acronym Generator API.

class AcronymgeneratorData {
  String? text;
  List<String>? acronyms;

  AcronymgeneratorData({
    this.text,
    this.acronyms,
  });

  factory AcronymgeneratorData.fromJson(Map<String, dynamic> json) => AcronymgeneratorData(
      text: json['text'],
      acronyms: (json['acronyms'] as List?)?.cast<String>(),
    );
}

class AcronymgeneratorRequest {
  String text;

  AcronymgeneratorRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
