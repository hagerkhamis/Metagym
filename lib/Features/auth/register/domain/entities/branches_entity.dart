import 'package:equatable/equatable.dart';

class TypesEntity extends Equatable {
  final int? branchId;
  final String? branchName;
  final int? fromId;

  const TypesEntity({this.branchId, this.branchName, this.fromId});

  @override
  List<Object?> get props => [branchId, branchName, fromId];
}
