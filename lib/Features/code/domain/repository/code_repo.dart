import '../../data/dat_source/login_remote_data_source/code_remote_data_source.dart';

abstract class CodeRepository {
  Future<CodeResponse> getCodeData(String code);
}
