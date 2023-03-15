class KVKapiMaterieleRegistratie {
  String? datumAanvang;
  String? datumEinde;

  KVKapiMaterieleRegistratie({this.datumAanvang, this.datumEinde});

  KVKapiMaterieleRegistratie.fromJson(Map<String, dynamic> json) {
    datumAanvang = json['datumAanvang'];
    datumEinde = json['datumEinde'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['datumAanvang'] = datumAanvang;
    data['datumEinde'] = datumEinde;
    return data;
  }
}
