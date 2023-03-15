import 'links.dart';
import 'trade_names.dart';

/// Locations that are part of the name profile.
class Vestigingen {
  String? vestigingsnummer;
  String? eersteHandelsnaam;
  List<Handelsnamen>? handelsnamen;
  List<Links>? lLinks;
  String? naam;
  String? ookGenoemd;

  Vestigingen(
      {this.vestigingsnummer,
      this.eersteHandelsnaam,
      this.handelsnamen,
      this.lLinks,
      this.naam,
      this.ookGenoemd});

  Vestigingen.fromJson(Map<String, dynamic> json) {
    vestigingsnummer = json['vestigingsnummer'];
    eersteHandelsnaam = json['eersteHandelsnaam'];
    if (json['handelsnamen'] != null) {
      handelsnamen = <Handelsnamen>[];
      json['handelsnamen'].forEach((v) {
        handelsnamen!.add(Handelsnamen.fromJson(v));
      });
    }
    if (json['_links'] != null) {
      lLinks = <Links>[];
      json['_links'].forEach((v) {
        lLinks!.add(Links.fromJson(v));
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
