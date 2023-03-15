import 'package:dutch_utils/models/kvk/shared/links.dart';

import 'address.dart';

class Eigenaar {
  String? rsin;
  String? rechtsvorm;
  String? uitgebreideRechtsvorm;
  List<Adressen>? adressen;
  List<String>? websites;
  List<Links>? links;

  Eigenaar(
      {this.rsin,
      this.rechtsvorm,
      this.uitgebreideRechtsvorm,
      this.adressen,
      this.websites,
      this.links});

  Eigenaar.fromJson(Map<String, dynamic> json) {
    rsin = json['rsin'];
    rechtsvorm = json['rechtsvorm'];
    uitgebreideRechtsvorm = json['uitgebreideRechtsvorm'];
    if (json['adressen'] != null) {
      adressen = <Adressen>[];
      json['adressen'].forEach((v) {
        adressen!.add(Adressen.fromJson(v));
      });
    }
    if (json['websites'] != null) {
      websites = json['websites'].cast<String>();
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
    data['rsin'] = rsin;
    data['rechtsvorm'] = rechtsvorm;
    data['uitgebreideRechtsvorm'] = uitgebreideRechtsvorm;
    if (adressen != null) {
      data['adressen'] = adressen!.map((v) => v.toJson()).toList();
    }
    data['websites'] = websites;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
