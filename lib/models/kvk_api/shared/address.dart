import 'geo_data.dart';

class KVKapiAdressen {
  String? type;
  String? indAfgeschermd;
  String? volledigAdres;
  String? straatnaam;
  int? huisnummer;
  String? huisnummerToevoeging;
  String? huisletter;
  String? toevoegingAdres;
  String? postcode;
  int? postbusnummer;
  String? plaats;
  String? straatHuisnummer;
  String? postcodeWoonplaats;
  String? regio;
  String? land;
  KVKapiGeoData? geoData;

  KVKapiAdressen(
      {this.type,
      this.indAfgeschermd,
      this.volledigAdres,
      this.straatnaam,
      this.huisnummer,
      this.huisnummerToevoeging,
      this.huisletter,
      this.toevoegingAdres,
      this.postcode,
      this.postbusnummer,
      this.plaats,
      this.straatHuisnummer,
      this.postcodeWoonplaats,
      this.regio,
      this.land,
      this.geoData});

  KVKapiAdressen.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    indAfgeschermd = json['indAfgeschermd'];
    volledigAdres = json['volledigAdres'];
    straatnaam = json['straatnaam'];
    huisnummer = json['huisnummer'];
    huisnummerToevoeging = json['huisnummerToevoeging'];
    huisletter = json['huisletter'];
    toevoegingAdres = json['toevoegingAdres'];
    postcode = json['postcode'];
    postbusnummer = json['postbusnummer'];
    plaats = json['plaats'];
    straatHuisnummer = json['straatHuisnummer'];
    postcodeWoonplaats = json['postcodeWoonplaats'];
    regio = json['regio'];
    land = json['land'];
    geoData = json['geoData'] != null
        ? KVKapiGeoData.fromJson(json['geoData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['indAfgeschermd'] = indAfgeschermd;
    data['volledigAdres'] = volledigAdres;
    data['straatnaam'] = straatnaam;
    data['huisnummer'] = huisnummer;
    data['huisnummerToevoeging'] = huisnummerToevoeging;
    data['huisletter'] = huisletter;
    data['toevoegingAdres'] = toevoegingAdres;
    data['postcode'] = postcode;
    data['postbusnummer'] = postbusnummer;
    data['plaats'] = plaats;
    data['straatHuisnummer'] = straatHuisnummer;
    data['postcodeWoonplaats'] = postcodeWoonplaats;
    data['regio'] = regio;
    data['land'] = land;
    if (geoData != null) {
      data['geoData'] = geoData!.toJson();
    }
    return data;
  }
}
