import 'package:dutch_utils/models/kvk_api/v1/shared/links.dart';

import 'address.dart';

class KVKapiEigenaar {
  String? rsin;
  String? rechtsvorm;
  String? uitgebreideRechtsvorm;
  List<KVKapiAdressen>? adressen;
  List<String>? websites;
  List<KVKapiLinks>? links;

  KVKapiEigenaar(
      {this.rsin,
      this.rechtsvorm,
      this.uitgebreideRechtsvorm,
      this.adressen,
      this.websites,
      this.links});

  KVKapiEigenaar.fromJson(Map<String, dynamic> json) {
    rsin = json['rsin'];
    rechtsvorm = json['rechtsvorm'];
    uitgebreideRechtsvorm = json['uitgebreideRechtsvorm'];
    if (json['adressen'] != null) {
      adressen = <KVKapiAdressen>[];
      json['adressen'].forEach((v) {
        adressen!.add(KVKapiAdressen.fromJson(v));
      });
    }
    if (json['websites'] != null) {
      websites = json['websites'].cast<String>();
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
