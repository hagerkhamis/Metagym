import '../../../../domain/entities/code_entity.dart';
import 'data.dart';

class CodeModel extends CodeEntity {
  int? status;
  String? message;
  Data? data;

  CodeModel({this.status, this.message, this.data})
      : super(
          id: data!.id!,
          name: data.name!,
          baseUrl: data.baseUrl!,
          code: data.code!,
          color: data.color!,
          logo: data.logo!,
          date: data.date!,
          publisher: data.publisher!,
          showBasma: data.showBasma!,
          currencyName: data.currencyName!,
        );

  factory CodeModel.fromJson(Map<String, dynamic> json) => CodeModel(
        status: json['status'] as int?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
