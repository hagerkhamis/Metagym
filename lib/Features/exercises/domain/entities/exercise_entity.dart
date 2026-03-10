import 'package:equatable/equatable.dart';

class ExerciseEntity extends Equatable {
  final int? id;
  final int? catIdFk;
  final String? title;
  final String? tamrenFor;
  final int? magmo3at;
  final int? tkrar;
  final int? restInSec;
  final String? instructions;
  final String? catName;
  final String? mainImage;
  final List<String>? allImages;

  const ExerciseEntity({
    this.id,
    this.catIdFk,
    this.title,
    this.tamrenFor,
    this.magmo3at,
    this.tkrar,
    this.restInSec,
    this.instructions,
    this.catName,
    this.mainImage,
    this.allImages,
  });

  @override
  List<Object?> get props => [
        id,
        catIdFk,
        title,
        tamrenFor,
        magmo3at,
        tkrar,
        restInSec,
        instructions,
        catName,
        mainImage,
        allImages,
      ];
}
