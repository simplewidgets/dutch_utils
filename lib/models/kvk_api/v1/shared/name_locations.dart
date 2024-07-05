import 'links.dart';
import 'trade_names.dart';

/// Locations that are part of the name profile.
class KVKapiVestigingen {
  String? vestigingsnummer;
  String? eersteHandelsnaam;
  List<KVKapiHandelsnamen>? handelsnamen;
  List<KVKapiLinks>? lLinks;
  String? naam;
  String? ookGenoemd;

  KVKapiVestigingen(
      {this.vestigingsnummer,
      this.eersteHandelsnaam,
      this.handelsnamen,
      this.lLinks,
      this.naam,
      this.ookGenoemd});

  KVKapiVestigingen.fromJson(Map<String, dynamic> json) {
    vestigingsnummer = json['vestigingsnummer'];
    eersteHandelsnaam = json['eersteHandelsnaam'];
    if (json['handelsnamen'] != null) {
      handelsnamen = <KVKapiHandelsnamen>[];
      json['handelsnamen'].forEach((v) {
        handelsnamen!.add(KVKapiHandelsnamen.fromJson(v));
      });
    }
    if (json['_links'] != null) {
      lLinks = <KVKapiLinks>[];
      json['_links'].forEach((v) {
        lLinks!.add(KVKapiLinks.fromJson(v));
      });
    }
    naam = json['naam'];
    ookGenoemd = json['ookGenoemd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vestigingsnummer'] = vestigingsnummer;
    data['eersteHandelsnaam'] = eersteHandelsnaam;
    if (handelsnamen != null) {
      data['handelsnamen'] = handelsnamen!.map((v) => v.toJson()).toList();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.map((v) => v.toJson()).toList();
    }
    data['naam'] = naam;
    data['ookGenoemd'] = ookGenoemd;
    return data;
  }
}
