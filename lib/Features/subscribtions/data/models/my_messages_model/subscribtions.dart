import '../../../domain/entities/subscribtions_entity.dart';

typedef AllSubscribtionsList = List<SubscribtionsEntity>?;

class Subscribtions extends SubscribtionsEntity {
  const Subscribtions({
    super.typeId,
    super.active,
    super.approved,
    super.branchIdFk,
    super.hesasNumsDaysNum,
    super.numDays,
    super.price,
    super.relatedToHesas,
    super.specialOffer,
    super.stopped,
    super.stoppedDaysNum,
    super.student,
    super.title,
    super.details,
    super.specialToStd,
    super.subsImage,
    super.haletEshtrak,
    super.image,
    super.imagePath,
  });

  factory Subscribtions.fromJson(Map<String, dynamic> json) => Subscribtions(
        typeId: json["type_id"],
        active: json["active"],
        approved: json["approved"],
        branchIdFk: json["branch_id_fk"],
        hesasNumsDaysNum: json["hesas_nums_days_num"],
        numDays: json["num_days"],
        price: json["price"],
        relatedToHesas: json["related_to_hesas"],
        specialOffer: json["special_offer"],
        stopped: json["stopped"],
        stoppedDaysNum: json["stopped_days_num"],
        student: json["student"],
        title: json["title"],
        details: json["details"],
        specialToStd: json["special_to_std"],
        subsImage: json["subs_image"],
        haletEshtrak: json["halet_eshtrak"],
        image: json["image"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "type_id": typeId,
        "active": active,
        "approved": approved,
        "branch_id_fk": branchIdFk,
        "hesas_nums_days_num": hesasNumsDaysNum,
        "num_days": numDays,
        "price": price,
        "related_to_hesas": relatedToHesas,
        "special_offer": specialOffer,
        "stopped": stopped,
        "stopped_days_num": stoppedDaysNum,
        "student": student,
        "title": title,
        "details": details,
        "special_to_std": specialToStd,
        "subs_image": subsImage,
        "halet_eshtrak": haletEshtrak,
        "image": image,
        "image_path": imagePath
      };
}
