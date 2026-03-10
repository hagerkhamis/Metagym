// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

import '../../domain/entities/code_entity.dart';
import '../../domain/use_cases/code_use_case.dart';

part 'code_state.dart';

class CodeCubit extends Cubit<CodeState> {
  final CodeUseCase codeRequest;
  bool isLoading = false;

  CodeCubit(this.codeRequest) : super(CodeInitial());

  Future<void> getCodeData(String code) async {
    emit(const CodeLoading());
    final result = await codeRequest.call(code);

    emit(result.fold(CodeFailed.new, CodeSuccessful.new));
  }
}
