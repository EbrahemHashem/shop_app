import 'package:equatable/equatable.dart';
import 'package:shop_app/core/api/end_points.dart';

import 'data.dart';

class LoginModel extends Equatable {
  final bool? status;
  final String? message;
  final Data? data;

  const LoginModel({this.status, this.message, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json[ApiKey.status] as bool?,
        message: json[ApiKey.message] as String?,
        data: json[ApiKey.data] == null ? null : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        ApiKey.status: status,
        ApiKey.message: message,
        ApiKey.data: data?.toJson(),
      };

  @override
  List<Object?> get props => [status, message, data];
}
