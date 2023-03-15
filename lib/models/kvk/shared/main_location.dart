import 'package:dutch_utils/models/kvk/shared/registration_date.dart';
import 'address.dart';
import 'links.dart';
import 'sbi_activities.dart';
import 'trade_names.dart';

class Hoofdvestiging {
  String? vestigingsnummer;
  String? kvkNummer;
  String? rsin;
  String? indNonMailing;
  String? formeleRegistratiedatum;
  MaterieleRegistratie? materieleRegistratie;
  String? eersteHandelsnaam;
  String? indHoofdvestiging;
  String? indCommercieleVestiging;
  int? voltijdWerkzamePersonen;
  int? totaalWerkzamePersonen;
  int? deeltijdWerkzamePersonen;
  List<Handelsnamen>? handelsnamen;
  List<Adressen>? adressen;
  List<String>? websites;
  List<SbiActiviteiten>? sbiActiviteiten;
  List<Links>? links;

  Hoofdvestiging(
      {this.vestigingsnummer,
      this.kvkNummer,
      this.rsin,
      this.indNonMailing,
      this.formeleRegistratiedatum,
      this.materieleRegistratie,
      this.eersteHandelsnaam,
      this.indHoofdvestiging,
      this.indCommercieleVestiging,
      this.voltijdWerkzamePersonen,
      this.totaalWerkzamePersonen,
      this.deeltijdWerkzamePersonen,
      this.handelsnamen,
      this.adressen,
      this.websites,
      this.sbiActiviteiten,
      this.links});

  Hoofdvestiging.fromJson(Map<String, dynamic> json) {
    vestigingsnummer = json['vestigingsnummer'];
    kvkNummer = json['kvkNummer'];
    rsin = json['rsin'];
    indNonMailing = json['indNonMailing'];
    formeleRegistratiedatum = json['formeleRegistratiedatum'];
    materieleRegistratie = json['materieleRegistratie'] != null
        ? MaterieleRegistratie.fromJson(json['materieleRegistratie'])
        : null;
    eersteHandelsnaam = json['eersteHandelsnaam'];
    indHoofdvestiging = json['indHoofdvestiging'];
    indCommercieleVestiging = json['indCommercieleVestiging'];
    voltijdWerkzamePersonen = json['voltijdWerkzamePersonen'];
    totaalWerkzamePersonen = json['totaalWerkzamePersonen'];
    deeltijdWerkzamePersonen = json['deeltijdWerkzamePersonen'];
    if (json['handelsnamen'] != null) {
      handelsnamen = <Handelsnamen>[];
      json['handelsnamen'].forEach((v) {
        handelsnamen!.add(Handelsnamen.fromJson(v));
      });
    }
    if (json['adressen'] != null) {
      adressen = <Adressen>[];
      json['adressen'].forEach((v) {
        adressen!.add(Adressen.fromJson(v));
      });
    }
    if (json['websites'] != null) {
      websites = json['websites'].cast<String>();
    }
    if (json['sbiActiviteiten'] != null) {
      sbiActiviteiten = <SbiActiviteiten>[];
      json['sbiActiviteiten'].forEach((v) {
        sbiActiviteiten!.add(SbiActiviteiten.fromJson(v));
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
    data['vestigingsnummer'] = vestigingsnummer;
    data['kvkNummer'] = kvkNummer;
    data['rsin'] = rsin;
    data['indNonMailing'] = indNonMailing;
    data['formeleRegistratiedatum'] = formeleRegistratiedatum;
    if (materieleRegistratie != null) {
      data['materieleRegistratie'] = materieleRegistratie!.toJson();
    }
    data['eersteHandelsnaam'] = eersteHandelsnaam;
    data['indHoofdvestiging'] = indHoofdvestiging;
    data['indCommercieleVestiging'] = indCommercieleVestiging;
    data['voltijdWerkzamePersonen'] = voltijdWerkzamePersonen;
    data['totaalWerkzamePersonen'] = totaalWerkzamePersonen;
    data['deeltijdWerkzamePersonen'] = deeltijdWerkzamePersonen;
    if (handelsnamen != null) {
      data['handelsnamen'] = handelsnamen!.map((v) => v.toJson()).toList();
    }
    if (adressen != null) {
      data['adressen'] = adressen!.map((v) => v.toJson()).toList();
    }
    data['websites'] = websites;
    if (sbiActiviteiten != null) {
      data['sbiActiviteiten'] =
          sbiActiviteiten!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
