import 'package:equatable/equatable.dart';

class AllInbodyEntity extends Equatable {
  final dynamic id;
  final dynamic title;
  final dynamic memCodeFk;
  final dynamic memIdFk;
  final dynamic dayDate;
  final dynamic forMonth;
  final dynamic forYear;
  final dynamic created;
  final dynamic updated;
  final dynamic image;
  final dynamic imagePath;

  const AllInbodyEntity(
      {this.id,
      this.title,
      this.memCodeFk,
      this.memIdFk,
      this.dayDate,
      this.forMonth,
      this.forYear,
      this.created,
      this.updated,
      this.image,
      this.imagePath});

  @override
  List<Object?> get props => [
        id,
        title,
        memCodeFk,
        memIdFk,
        dayDate,
        forMonth,
        forYear,
        created,
        updated,
        image,
        imagePath
      ];
}
