import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/utils/functions/setup_service_locator.dart';
import '../../../../../../core/utils/network/api/network_api.dart';
import '../../../../../../core/utils/network/network_request.dart';
import '../../../../../../core/utils/network/network_utils.dart';
import '../../../domain/entities/code_entity.dart';
import '../../models/login_model/login_model/code_model.dart';

typedef CodeResponse = Either<String, CodeEntity>;

abstract class CodeRemoteDataSource {
  Future<CodeResponse> getCodeData(String code);
}

class CodeRemoteDataSourceImpl extends CodeRemoteDataSource {
  @override
  Future<CodeResponse> getCodeData(String code) async {
    CodeResponse codeResponse = left("");

    var body = {
      "code": code.trim(),
    };
    await getIt<NetworkRequest>().requestFutureData<CodeModel>(
      Method.post,
      params: body,
      options: Options(contentType: Headers.formUrlEncodedContentType),
      url: CodeApi.getCodeUrl,
      newBaseUrl: CodeApi.baseUrl,
      onSuccess: (data) {
        if (data.status == 200) {
          codeResponse = right(data);
        } else {
          codeResponse = left(data.message!);
        }
      },
      onError: (code, msg) {
        codeResponse = left(msg.toString());
      },
    );
    return codeResponse;
  }
}
