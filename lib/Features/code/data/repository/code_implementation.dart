import '../dat_source/login_remote_data_source/code_remote_data_source.dart';
import '../../domain/repository/code_repo.dart';

class CodeRepoImpl extends CodeRepository {
  final CodeRemoteDataSource codeRemoteDataSource;

  CodeRepoImpl(this.codeRemoteDataSource);

  @override
  Future<CodeResponse> getCodeData(
    String code,
  ) async {
    var codeData = await codeRemoteDataSource.getCodeData(
      code,
    );
    return codeData;
  }

  // @override
  // Future<LoginResponse> login(String phone) async {
  //   Future<LoginResponse> logini(String phone) async {
  //     try {
  //       var userData = await loginRemoteDataSourec.login(phone);

  //       return right(userData);
  //     } catch (e) {
  //       return Left(ServerFailure(e.toString()));
  //     }
  //   }
  // }
}
