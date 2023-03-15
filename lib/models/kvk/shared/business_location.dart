import 'package:dutch_utils/models/kvk/shared/links.dart';

/// Locations of the business from the location profile
class BedrijfsVestigingen {
  String? vestigingsnummer;
  String? kvkNummer;
  String? eersteHandelsnaam;
  String? indHoofdvestiging;
  String? indAdresAfgeschermd;
  String? indCommercieleVestiging;
  String? volledigAdres;
  List<Links>? links;

  BedrijfsVestigingen(
      {this.vestigingsnummer,
      this.kvkNummer,
      this.eersteHandelsnaam,
      this.indHoofdvestiging,
      this.indAdresAfgeschermd,
      this.indCommercieleVestiging,
      this.volledigAdres,
      this.links});

  BedrijfsVestigingen.fromJson(Map<String, dynamic> json) {
    vestigingsnummer = json['vestigingsnummer'];
    kvkNummer = json['kvkNummer'];
    eersteHandelsnaam = json['eersteHandelsnaam'];
    indHoofdvestiging = json['indHoofdvestiging'];
    indAdresAfgeschermd = json['indAdresAfgeschermd'];
    indCommercieleVestiging = json['indCommercieleVestiging'];
    volledigAdres = json['volledigAdres'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vestigingsnummer'] = vestigingsnummer;
    data['kvkNummer'] = kvkNummer;
    data['eersteHandelsnaam'] = eersteHandelsnaam;
    data['indHoofdvestiging'] = indHoofdvestiging;
    data['indAdresAfgeschermd'] = indAdresAfgeschermd;
    data['indCommercieleVestiging'] = indCommercieleVestiging;
    data['volledigAdres'] = volledigAdres;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
