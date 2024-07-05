class Address {
  BinnenlandsAdres? binnenlandsAdres;
  BuitenlandsAdres? buitenlandsAdres;

  Address({this.binnenlandsAdres, this.buitenlandsAdres});

  Address.fromJson(Map<String, dynamic> json) {
    binnenlandsAdres = json['binnenlandsAdres'] != null
        ? BinnenlandsAdres.fromJson(json['binnenlandsAdres'])
        : null;
    buitenlandsAdres = json['buitenlandsAdres'] != null
        ? BuitenlandsAdres.fromJson(json['buitenlandsAdres'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (binnenlandsAdres != null) {
      data['binnenlandsAdres'] = binnenlandsAdres!.toJson();
    }
    if (buitenlandsAdres != null) {
      data['buitenlandsAdres'] = buitenlandsAdres!.toJson();
    }
    return data;
  }
}

class BinnenlandsAdres {
  String? type;
  String? straatnaam;
  int? huisnummer;
  String? huisletter;
  int? postbusnummer;
  String? postcode;
  String? plaats;

  BinnenlandsAdres(
      {this.type,
      this.straatnaam,
      this.huisnummer,
      this.huisletter,
      this.postbusnummer,
      this.postcode,
      this.plaats});

  BinnenlandsAdres.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    straatnaam = json['straatnaam'];
    huisnummer = json['huisnummer'];
    huisletter = json['huisletter'];
    postbusnummer = json['postbusnummer'];
    postcode = json['postcode'];
    plaats = json['plaats'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['straatnaam'] = straatnaam;
    data['huisnummer'] = huisnummer;
    data['huisletter'] = huisletter;
    data['postbusnummer'] = postbusnummer;
    data['postcode'] = postcode;
    data['plaats'] = plaats;
    return data;
  }
}

class BuitenlandsAdres {
  String? type;
  String? straatHuisnummer;
  String? postcodeWoonplaats;
  String? land;

  BuitenlandsAdres(
      {this.type, this.straatHuisnummer, this.postcodeWoonplaats, this.land});

  BuitenlandsAdres.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    straatHuisnummer = json['straatHuisnummer'];
    postcodeWoonplaats = json['postcodeWoonplaats'];
    land = json['land'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['straatHuisnummer'] = straatHuisnummer;
    data['postcodeWoonplaats'] = postcodeWoonplaats;
    data['land'] = land;
    return data;
  }
}
