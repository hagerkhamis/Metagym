import 'package:hive/hive.dart';

part 'code_entity.g.dart';

@HiveType(typeId: 5)
class CodeEntity {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String baseUrl;
  @HiveField(3)
  final String code;
  @HiveField(4)
  final String color;
  @HiveField(5)
  final String logo;
  @HiveField(6)
  final String date;
  @HiveField(7)
  final String publisher;
  @HiveField(8)
  final String showBasma;
  @HiveField(9)
  final String currencyName;


  CodeEntity({
    required this.id,
    required this.name,
    required this.baseUrl,
    required this.code,
    required this.color,
    required this.logo,
    required this.date,
    required this.publisher,
    required this.showBasma,
    required this.currencyName,
  });
}
