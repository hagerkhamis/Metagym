part of 'code_cubit.dart';

abstract class CodeState {
  const CodeState();
  List<Object> get props => [];
}

class CodeInitial extends CodeState {}

class CodeLoading extends CodeState {
  const CodeLoading();
}

class CodeSuccessful extends CodeState {
  final CodeEntity data;

  const CodeSuccessful(this.data);
}

class CodeFailed extends CodeState {
  final String message;
  const CodeFailed(this.message);
}
