import '../shared/links.dart';
import '../shared/name_locations.dart';

class KvkNameProfile {
  String? kvkNummer;
  String? rsin;
  String? statutaireNaam;
  String? naam;
  String? ookGenoemd;
  String? startdatum;
  String? einddatum;
  List<Vestigingen>? vestigingen;
  List<Links>? lLinks;

  KvkNameProfile(
      {this.kvkNummer,
      this.rsin,
      this.statutaireNaam,
      this.naam,
      this.ookGenoemd,
      this.startdatum,
      this.einddatum,
      this.vestigingen,
      this.lLinks});

  KvkNameProfile.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    rsin = json['rsin'];
    statutaireNaam = json['statutaireNaam'];
    naam = json['naam'];
    ookGenoemd = json['ookGenoemd'];
    startdatum = json['startdatum'];
    einddatum = json['einddatum'];
    if (json['vestigingen'] != null) {
      vestigingen = <Vestigingen>[];
      json['vestigingen'].forEach((v) {
        vestigingen!.add(Vestigingen.fromJson(v));
      });
    }
    if (json['_links'] != null) {
      lLinks = <Links>[];
      json['_links'].forEach((v) {
        lLinks!.add(Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kvkNummer'] = kvkNummer;
    data['rsin'] = rsin;
    data['statutaireNaam'] = statutaireNaam;
    data['naam'] = naam;
    data['ookGenoemd'] = ookGenoemd;
    data['startdatum'] = startdatum;
    data['einddatum'] = einddatum;
    if (vestigingen != null) {
      data['vestigingen'] = vestigingen!.map((v) => v.toJson()).toList();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
