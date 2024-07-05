import 'package:dutch_utils/models/kvk_api/v1/shared/links.dart';
import '../shared/business_location.dart';

class KVKapiLocationProfile {
  String? kvkNummer;
  int? aantalCommercieleVestigingen;
  int? aantalNietCommercieleVestigingen;
  int? totaalAantalVestigingen;
  List<KVKapiBedrijfsVestigingen>? vestigingen;
  List<KVKapiLinks>? links;

  KVKapiLocationProfile(
      {this.kvkNummer,
      this.aantalCommercieleVestigingen,
      this.aantalNietCommercieleVestigingen,
      this.totaalAantalVestigingen,
      this.vestigingen,
      this.links});

  KVKapiLocationProfile.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    aantalCommercieleVestigingen = json['aantalCommercieleVestigingen'];
    aantalNietCommercieleVestigingen = json['aantalNietCommercieleVestigingen'];
    totaalAantalVestigingen = json['totaalAantalVestigingen'];
    if (json['vestigingen'] != null) {
      vestigingen = <KVKapiBedrijfsVestigingen>[];
      json['vestigingen'].forEach((v) {
        vestigingen!.add(KVKapiBedrijfsVestigingen.fromJson(v));
      });
    }
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
    data['aantalCommercieleVestigingen'] = aantalCommercieleVestigingen;
    data['aantalNietCommercieleVestigingen'] = aantalNietCommercieleVestigingen;
    data['totaalAantalVestigingen'] = totaalAantalVestigingen;
    if (vestigingen != null) {
      data['vestigingen'] = vestigingen!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
