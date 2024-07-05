import 'package:dutch_utils/models/kvk_api/v1/shared/registration_date.dart';
import 'address.dart';
import 'links.dart';
import 'sbi_activities.dart';
import 'trade_names.dart';

class KVKapiHoofdvestiging {
  String? vestigingsnummer;
  String? kvkNummer;
  String? rsin;
  String? indNonMailing;
  String? formeleRegistratiedatum;
  KVKapiMaterieleRegistratie? materieleRegistratie;
  String? eersteHandelsnaam;
  String? indHoofdvestiging;
  String? indCommercieleVestiging;
  int? voltijdWerkzamePersonen;
  int? totaalWerkzamePersonen;
  int? deeltijdWerkzamePersonen;
  List<KVKapiHandelsnamen>? handelsnamen;
  List<KVKapiAdressen>? adressen;
  List<String>? websites;
  List<KVKapiSbiActiviteiten>? sbiActiviteiten;
  List<KVKapiLinks>? links;

  KVKapiHoofdvestiging(
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

  KVKapiHoofdvestiging.fromJson(Map<String, dynamic> json) {
    vestigingsnummer = json['vestigingsnummer'];
    kvkNummer = json['kvkNummer'];
    rsin = json['rsin'];
    indNonMailing = json['indNonMailing'];
    formeleRegistratiedatum = json['formeleRegistratiedatum'];
    materieleRegistratie = json['materieleRegistratie'] != null
        ? KVKapiMaterieleRegistratie.fromJson(json['materieleRegistratie'])
        : null;
    eersteHandelsnaam = json['eersteHandelsnaam'];
    indHoofdvestiging = json['indHoofdvestiging'];
    indCommercieleVestiging = json['indCommercieleVestiging'];
    voltijdWerkzamePersonen = json['voltijdWerkzamePersonen'];
    totaalWerkzamePersonen = json['totaalWerkzamePersonen'];
    deeltijdWerkzamePersonen = json['deeltijdWerkzamePersonen'];
    if (json['handelsnamen'] != null) {
      handelsnamen = <KVKapiHandelsnamen>[];
      json['handelsnamen'].forEach((v) {
        handelsnamen!.add(KVKapiHandelsnamen.fromJson(v));
      });
    }
    if (json['adressen'] != null) {
      adressen = <KVKapiAdressen>[];
      json['adressen'].forEach((v) {
        adressen!.add(KVKapiAdressen.fromJson(v));
      });
    }
    if (json['websites'] != null) {
      websites = json['websites'].cast<String>();
    }
    if (json['sbiActiviteiten'] != null) {
      sbiActiviteiten = <KVKapiSbiActiviteiten>[];
      json['sbiActiviteiten'].forEach((v) {
        sbiActiviteiten!.add(KVKapiSbiActiviteiten.fromJson(v));
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
