import 'package:dutch_utils/models/kvk/shared/links.dart';
import '../shared/business_location.dart';

class KvkLocationProfile {
  String? kvkNummer;
  int? aantalCommercieleVestigingen;
  int? aantalNietCommercieleVestigingen;
  int? totaalAantalVestigingen;
  List<BedrijfsVestigingen>? vestigingen;
  List<Links>? links;

  KvkLocationProfile(
      {this.kvkNummer,
      this.aantalCommercieleVestigingen,
      this.aantalNietCommercieleVestigingen,
      this.totaalAantalVestigingen,
      this.vestigingen,
      this.links});

  KvkLocationProfile.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    aantalCommercieleVestigingen = json['aantalCommercieleVestigingen'];
    aantalNietCommercieleVestigingen = json['aantalNietCommercieleVestigingen'];
    totaalAantalVestigingen = json['totaalAantalVestigingen'];
    if (json['vestigingen'] != null) {
      vestigingen = <BedrijfsVestigingen>[];
      json['vestigingen'].forEach((v) {
        vestigingen!.add(BedrijfsVestigingen.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
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
