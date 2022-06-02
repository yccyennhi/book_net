class BaseDto<T> {
  final int errCode;
  final bool error;
  final T? data;
  BaseDto({required this.errCode, required this.error, required this.data});

  factory BaseDto.fromJson(Map<String, dynamic> json,
      {Function(dynamic)? create}) {
    return BaseDto<T>(
      errCode: json["errCode"],
      error: json['error'],
      data: create?.call(json["data"]),
    );
  }
}
