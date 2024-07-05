import 'package:dutch_utils/models/kvk_api/v1/shared/links.dart';

class KVKapiSearchResponse {
  /// The current page number
  int? pagina;

  /// The number of results on this page
  int? aantal;

  /// The total number of results
  int? totaal;

  /// Link to the previous page
  String? vorige;

  /// Link to the next page
  String? volgende;

  /// The results on this page
  List<KvkSearchResult>? resultaten;

  /// Links to other pages
  List<KVKapiLinks>? links;

  KVKapiSearchResponse(
      {this.pagina,
      this.aantal,
      this.totaal,
      this.vorige,
      this.volgende,
      this.resultaten,
      this.links});

  /// Create a KvkSearchResponse from a JSON object
  KVKapiSearchResponse.fromJson(Map<String, dynamic> json) {
    pagina = json['pagina'];
    aantal = json['aantal'] ?? json['resultatenPerPagina'];
    totaal = json['totaal'];
    vorige = json['vorige'];
    volgende = json['volgende'];
    if (json['resultaten'] != null) {
      resultaten = <KvkSearchResult>[];
      json['resultaten'].forEach((v) {
        resultaten!.add(KvkSearchResult.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = <KVKapiLinks>[];
      json['links'].forEach((v) {
        links!.add(KVKapiLinks.fromJson(v));
      });
    }
  }

  /// Convert a KvkSearchResponse to a JSON object
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pagina'] = pagina;
    data['aantal'] = aantal;
    data['totaal'] = totaal;
    data['vorige'] = vorige;
    data['volgende'] = volgende;
    if (resultaten != null) {
      data['resultaten'] = resultaten!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// A result from a KVK search
class KvkSearchResult {
  /// The KVK number of the company
  String? kvkNummer;

  /// The RSIN number of the company
  String? rsin;

  /// The branch number of the company
  String? vestigingsnummer;

  /// The name of the company
  String? handelsnaam;

  /// The type of address
  String? adresType;

  /// The street name
  String? straatnaam;

  /// The house number
  int? huisnummer;

  /// The house number addition
  String? huisnummerToevoeging;

  /// The postal code
  String? postcode;

  /// The city
  String? plaats;

  /// The type of company
  String? type;

  /// Whether the company is active
  String? actief;

  /// The name of the company when it was active
  String? vervallenNaam;

  /// Links to other pages
  List<KVKapiLinks>? links;

  KvkSearchResult(
      {this.kvkNummer,
      this.rsin,
      this.vestigingsnummer,
      this.handelsnaam,
      this.adresType,
      this.straatnaam,
      this.huisnummer,
      this.huisnummerToevoeging,
      this.postcode,
      this.plaats,
      this.type,
      this.actief,
      this.vervallenNaam,
      this.links});

  KvkSearchResult.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    rsin = json['rsin'];
    vestigingsnummer = json['vestigingsnummer'];
    handelsnaam = json['handelsnaam'] ?? json['naam'];
    adresType = json['adresType'];
    straatnaam = json['straatnaam'];
    huisnummer = json['huisnummer'];
    huisnummerToevoeging = json['huisnummerToevoeging'];
    postcode = json['postcode'];
    plaats = json['plaats'];
    type = json['type'];
    actief = json['actief'];
    vervallenNaam = json['vervallenNaam'];
    if (json['links'] != null) {
      links = <KVKapiLinks>[];
      json['links'].forEach((v) {
        links!.add(KVKapiLinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kvkNummer'] = kvkNummer;
    data['rsin'] = rsin;
    data['vestigingsnummer'] = vestigingsnummer;
    data['handelsnaam'] = handelsnaam;
    data['adresType'] = adresType;
    data['straatnaam'] = straatnaam;
    data['huisnummer'] = huisnummer;
    data['huisnummerToevoeging'] = huisnummerToevoeging;
    data['postcode'] = postcode;
    data['plaats'] = plaats;
    data['type'] = type;
    data['actief'] = actief;
    data['vervallenNaam'] = vervallenNaam;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
