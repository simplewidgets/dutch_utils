class Handelsnamen {
  String? naam;
  int? volgorde;

  Handelsnamen({this.naam, this.volgorde});

  Handelsnamen.fromJson(Map<String, dynamic> json) {
    naam = json['naam'];
    volgorde = json['volgorde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['naam'] = naam;
    data['volgorde'] = volgorde;
    return data;
  }
}
