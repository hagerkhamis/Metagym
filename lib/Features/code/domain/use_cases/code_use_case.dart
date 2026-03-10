import '../../data/dat_source/login_remote_data_source/code_remote_data_source.dart';
import '../entities/code_entity.dart';
import '../repository/code_repo.dart';

abstract class UseCase<type> {
  Future<CodeResponse> call(String code);
}

class CodeUseCase extends UseCase<CodeEntity> {
  final CodeRepository codeRepository;
  CodeUseCase(this.codeRepository);

  @override
  Future<CodeResponse> call(String code) async {
    return await codeRepository.getCodeData(code);
  }
}
