import 'package:dutch_utils/models/kvk/shared/main_location.dart';

import '../shared/links.dart';
import '../shared/owner.dart';
import '../shared/registration_date.dart';
import '../shared/sbi_activities.dart';
import '../shared/trade_names.dart';

/// Basic profile returned from the KVK API.
/// This package only gives you the model which you can use to parse the JSON response.
/// The variable names are in Dutch because that is how the KVK API returns them.
///
/// This package is not affiliated with the KVK. If you want to use the KVK API, you need to register at https://developer.kvk.nl/
/// A stress point in the API is that you need to validate the response using a .pem certificate.
/// This package does not do that for you.
///
/// We recommend the following NODEJS-package to validate the response (which we use in our own projects):
/// https://github.com/Quantix-IT/kvk
class KvkBasicProfile {
  /// The KVK number of the company.
  String? kvkNummer;

  /// Indicates whether the company is registered as a non-mailing company.
  String? indNonMailing;

  /// The name of the company.
  String? naam;

  /// The date the company was registered.
  String? formeleRegistratiedatum;

  /// The date the company was last updated.
  MaterieleRegistratie? materieleRegistratie;

  /// The total number of employees.
  int? totaalWerkzamePersonen;

  /// The legal name of the company.
  String? statutaireNaam;

  /// The list of trade names of the company.
  List<Handelsnamen>? handelsnamen;

  /// The list of SBI codes of the company.
  List<SbiActiviteiten>? sbiActiviteiten;

  /// The list of links to the company.
  List<Links>? links;

  /// The list of embedded objects.
  KvkBasicProfileEmbedded? eEmbedded;

  KvkBasicProfile(
      {this.kvkNummer,
      this.indNonMailing,
      this.naam,
      this.formeleRegistratiedatum,
      this.materieleRegistratie,
      this.totaalWerkzamePersonen,
      this.statutaireNaam,
      this.handelsnamen,
      this.sbiActiviteiten,
      this.links,
      this.eEmbedded});

  /// Creates a BasicProfileKVK object from a JSON string.
  KvkBasicProfile.fromJson(Map<String, dynamic> json) {
    kvkNummer = json['kvkNummer'];
    indNonMailing = json['indNonMailing'];
    naam = json['naam'];
    formeleRegistratiedatum = json['formeleRegistratiedatum'];
    materieleRegistratie = json['materieleRegistratie'] != null
        ? MaterieleRegistratie.fromJson(json['materieleRegistratie'])
        : null;
    totaalWerkzamePersonen = json['totaalWerkzamePersonen'];
    statutaireNaam = json['statutaireNaam'];
    if (json['handelsnamen'] != null) {
      handelsnamen = <Handelsnamen>[];
      json['handelsnamen'].forEach((v) {
        handelsnamen!.add(Handelsnamen.fromJson(v));
      });
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
    eEmbedded = json['_embedded'] != null
        ? KvkBasicProfileEmbedded.fromJson(json['_embedded'])
        : null;
  }

  /// Creates a JSON string from a BasicProfileKVK object.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kvkNummer'] = kvkNummer;
    data['indNonMailing'] = indNonMailing;
    data['naam'] = naam;
    data['formeleRegistratiedatum'] = formeleRegistratiedatum;
    if (materieleRegistratie != null) {
      data['materieleRegistratie'] = materieleRegistratie!.toJson();
    }
    data['totaalWerkzamePersonen'] = totaalWerkzamePersonen;
    data['statutaireNaam'] = statutaireNaam;
    if (handelsnamen != null) {
      data['handelsnamen'] = handelsnamen!.map((v) => v.toJson()).toList();
    }
    if (sbiActiviteiten != null) {
      data['sbiActiviteiten'] =
          sbiActiviteiten!.map((v) => v.toJson()).toList();
    }
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    if (eEmbedded != null) {
      data['_embedded'] = eEmbedded!.toJson();
    }
    return data;
  }
}

class KvkBasicProfileEmbedded {
  Hoofdvestiging? hoofdvestiging;
  Eigenaar? eigenaar;

  KvkBasicProfileEmbedded({this.hoofdvestiging, this.eigenaar});

  KvkBasicProfileEmbedded.fromJson(Map<String, dynamic> json) {
    hoofdvestiging = json['hoofdvestiging'] != null
        ? Hoofdvestiging.fromJson(json['hoofdvestiging'])
        : null;
    eigenaar =
        json['eigenaar'] != null ? Eigenaar.fromJson(json['eigenaar']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (hoofdvestiging != null) {
      data['hoofdvestiging'] = hoofdvestiging!.toJson();
    }
    if (eigenaar != null) {
      data['eigenaar'] = eigenaar!.toJson();
    }
    return data;
  }
}
