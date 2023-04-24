class ErrorModel {
  ErrorModel({
    this.errorCode,
    this.statusCode,
    this.message,
  });

  ErrorModel.fromJson(Map<String, dynamic> json) {
    errorCode = json['errorCode'];
    message = json['message'];
  }

  String? errorCode;
  int? statusCode;
  String? message;

  String? getErrorDescription() {
    return message;
  }

  String? getErrorCodeString() {
    return errorCode;
  }
}
