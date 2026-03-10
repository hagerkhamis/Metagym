class Data {
  String? id;
  String? name;
  String? baseUrl;
  String? code;
  String? color;
  String? logo;
  String? date;
  String? publisher;
  String? showBasma;
  String? currencyName;

  Data({
    this.id,
    this.name,
    this.baseUrl,
    this.code,
    this.color,
    this.logo,
    this.date,
    this.publisher,
    this.showBasma,
    this.currencyName,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as String?,
        name: json['name'] as String?,
        baseUrl: json['base_url'] as String?,
        code: json['code'] as String?,
        color: json['color'] as String?,
        logo: json['logo'] as String?,
        date: json['date'] as String?,
        publisher: json['publisher'] as String?,
        showBasma: json['show_basma'] as String?,
        currencyName: json['currency_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'base_url': baseUrl,
        'code': code,
        'color': color,
        'logo': logo,
        'date': date,
        'publisher': publisher,
        'show_basma': showBasma,
        'currency_name': currencyName,
      };
}
