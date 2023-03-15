class SbiActiviteiten {
  String? sbiCode;
  String? sbiOmschrijving;
  String? indHoofdactiviteit;

  SbiActiviteiten(
      {this.sbiCode, this.sbiOmschrijving, this.indHoofdactiviteit});

  SbiActiviteiten.fromJson(Map<String, dynamic> json) {
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
