import 'package:equatable/equatable.dart';

class SubscribtionsEntity extends Equatable {
  final int? typeId;
  final String? title;
  final int? numDays;
  final int? stopped;
  final int? stoppedDaysNum;
  final String? price;
  final int? approved;
  final int? student;
  final int? specialOffer;
  final int? relatedToHesas;
  final int? hesasNumsDaysNum;
  final int? branchIdFk;
  final String? active;
  final String? details;
  final String? specialToStd;
  final String? subsImage;

  final dynamic image;

  final String? haletEshtrak;
  final dynamic imagePath;

  const SubscribtionsEntity(
      {this.typeId,
      this.title,
      this.numDays,
      this.stopped,
      this.stoppedDaysNum,
      this.price,
      this.approved,
      this.student,
      this.specialOffer,
      this.relatedToHesas,
      this.hesasNumsDaysNum,
      this.branchIdFk,
      this.active,
      this.details,
      this.specialToStd,
      this.subsImage,
      this.image,
      this.haletEshtrak,
      this.imagePath});

  @override
  List<Object?> get props => [
        typeId,
        title,
        numDays,
        stopped,
        stoppedDaysNum,
        price,
        approved,
        student,
        specialOffer,
        relatedToHesas,
        hesasNumsDaysNum,
        branchIdFk,
        active,
        details,
        specialToStd,
        subsImage,
        image,
        haletEshtrak,
        imagePath
      ];
}
