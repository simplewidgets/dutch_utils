class KVKapiHandelsnamen {
  String? naam;
  int? volgorde;

  KVKapiHandelsnamen({this.naam, this.volgorde});

  KVKapiHandelsnamen.fromJson(Map<String, dynamic> json) {
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
