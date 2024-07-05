class KVKapiSbiActiviteiten {
  String? sbiCode;
  String? sbiOmschrijving;
  String? indHoofdactiviteit;

  KVKapiSbiActiviteiten(
      {this.sbiCode, this.sbiOmschrijving, this.indHoofdactiviteit});

  KVKapiSbiActiviteiten.fromJson(Map<String, dynamic> json) {
    sbiCode = json['sbiCode'];
    sbiOmschrijving = json['sbiOmschrijving'];
    indHoofdactiviteit = json['indHoofdactiviteit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sbiCode'] = sbiCode;
    data['sbiOmschrijving'] = sbiOmschrijving;
    data['indHoofdactiviteit'] = indHoofdactiviteit;
    return data;
  }
}
