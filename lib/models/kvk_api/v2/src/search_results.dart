import 'package:dutch_utils/models/kvk_api/v2/shared/address.dart';

class KVKapiSearchResponse {
  int? pagina;
  int? resultatenPerPagina;
  int? totaal;
  String? vorige;
  String? volgende;
  List<KvkSearchResult>? resultaten;
  Links? lLinks;

  KVKapiSearchResponse(
      {this.pagina,
      this.resultatenPerPagina,
      this.totaal,
      this.vorige,
      this.volgende,
      this.resultaten,
      this.lLinks});

  KVKapiSearchResponse.fromJson(Map<String, dynamic> json) {
    pagina = json['pagina'];
    resultatenPerPagina = json['resultatenPerPagina'];
    totaal = json['totaal'];
    vorige = json['vorige'];
    volgende = json['volgende'];
    if (json['resultaten'] != null) {
      resultaten = <KvkSearchResult>[];
      json['resultaten'].forEach((v) {
        resultaten!.add(KvkSearchResult.fromJson(v));
      });
    }
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pagina'] = pagina;
    data['resultatenPerPagina'] = resultatenPerPagina;
    data['totaal'] = totaal;
    data['vorige'] = vorige;
    data['volgende'] = volgende;
    if (resultaten != null) {
      data['resultaten'] = resultaten!.map((v) => v.toJson()).toList();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class KvkSearchResult {
  /// KVK number
  String? kvkNummer;

  /// RSIN number
  String? rsin;

  /// Vestigingsnummer
  String? vestigingsnummer;

  /// Name of the company
  String? naam;

  /// Address of the company
  Address? adres;

  /// Type of the company
  String? type;

  /// Is the company active
  String? actief;

  /// Name of the company when it was expired
  String? vervallenNaam;

  /// Links to the company
  Links? lLinks;

  KvkSearchResult(
      {this.kvkNummer,
      this.rsin,
      this.vestigingsnummer,
      this.naam,
      this.adres,
      this.type,
      this.actief,
      this.vervallenNaam,
      this.lLinks});

  KvkSearchResult.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    rsin = json['rsin'];
    vestigingsnummer = json['vestigingsnummer'];
    naam = json['naam'];
    adres = json['adres'] != null ? Address.fromJson(json['adres']) : null;
    type = json['type'];
    actief = json['actief'];
    vervallenNaam = json['vervallenNaam'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kvkNummer'] = kvkNummer;
    data['rsin'] = rsin;
    data['vestigingsnummer'] = vestigingsnummer;
    data['naam'] = naam;
    if (adres != null) {
      data['adres'] = adres!.toJson();
    }
    data['type'] = type;
    data['actief'] = actief;
    data['vervallenNaam'] = vervallenNaam;
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class Links {
  AdditionalProp1? additionalProp1;
  AdditionalProp1? additionalProp2;
  AdditionalProp1? additionalProp3;

  Links({this.additionalProp1, this.additionalProp2, this.additionalProp3});

  Links.fromJson(Map<String, dynamic> json) {
    additionalProp1 = json['additionalProp1'] != null
        ? AdditionalProp1.fromJson(json['additionalProp1'])
        : null;
    additionalProp2 = json['additionalProp2'] != null
        ? AdditionalProp1.fromJson(json['additionalProp2'])
        : null;
    additionalProp3 = json['additionalProp3'] != null
        ? AdditionalProp1.fromJson(json['additionalProp3'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (additionalProp1 != null) {
      data['additionalProp1'] = additionalProp1!.toJson();
    }
    if (additionalProp2 != null) {
      data['additionalProp2'] = additionalProp2!.toJson();
    }
    if (additionalProp3 != null) {
      data['additionalProp3'] = additionalProp3!.toJson();
    }
    return data;
  }
}

class AdditionalProp1 {
  String? href;
  String? title;

  AdditionalProp1({this.href, this.title});

  AdditionalProp1.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['href'] = href;
    data['title'] = title;
    return data;
  }
}
