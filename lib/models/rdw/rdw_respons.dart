class RdwCarInformation {
  String? kenteken;
  String? voertuigsoort;
  String? merk;
  String? handelsbenaming;
  String? vervaldatumApk;
  String? datumTenaamstelling;
  String? brutoBpm;
  String? inrichting;
  String? aantalZitplaatsen;
  String? eersteKleur;
  String? tweedeKleur;
  String? aantalCilinders;
  String? cilinderinhoud;
  String? massaLedigVoertuig;
  String? toegestaneMaximumMassaVoertuig;
  String? massaRijklaar;
  String? maximumMassaTrekkenOngeremd;
  String? maximumTrekkenMassaGeremd;
  String? datumEersteToelating;
  String? datumEersteTenaamstellingInNederland;
  String? wachtOpKeuren;
  String? catalogusprijs;
  String? wamVerzekerd;
  String? aantalDeuren;
  String? aantalWielen;
  String? afstandHartKoppelingTotAchterzijdeVoertuig;
  String? afstandVoorzijdeVoertuigTotHartKoppeling;
  String? lengte;
  String? breedte;
  String? europeseVoertuigcategorie;
  String? technischeMaxMassaVoertuig;
  String? type;
  String? typegoedkeuringsnummer;
  String? variant;
  String? uitvoering;
  String? volgnummerWijzigingEuTypegoedkeuring;
  String? vermogenMassarijklaar;
  String? wielbasis;
  String? exportIndicator;
  String? openstaandeTerugroepactieIndicator;
  String? taxiIndicator;
  String? maximumMassaSamenstelling;
  String? aantalRolstoelplaatsen;
  String? maximumOndersteunendeSnelheid;
  String? jaarLaatsteRegistratieTellerstand;
  String? tellerstandoordeel;
  String? codeToelichtingTellerstandoordeel;
  String? tenaamstellenMogelijk;
  String? vervaldatumApkDt;
  String? datumTenaamstellingDt;
  String? datumEersteToelatingDt;
  String? datumEersteTenaamstellingInNederlandDt;
  String? zuinigheidsclassificatie;
  String? apiGekentekendeVoertuigenAssen;
  String? apiGekentekendeVoertuigenBrandstof;
  String? apiGekentekendeVoertuigenCarrosserie;
  String? apiGekentekendeVoertuigenCarrosserieSpecifiek;
  String? apiGekentekendeVoertuigenVoertuigklasse;

  RdwCarInformation(
      {this.kenteken,
      this.voertuigsoort,
      this.merk,
      this.handelsbenaming,
      this.vervaldatumApk,
      this.datumTenaamstelling,
      this.brutoBpm,
      this.inrichting,
      this.aantalZitplaatsen,
      this.eersteKleur,
      this.tweedeKleur,
      this.aantalCilinders,
      this.cilinderinhoud,
      this.massaLedigVoertuig,
      this.toegestaneMaximumMassaVoertuig,
      this.massaRijklaar,
      this.maximumMassaTrekkenOngeremd,
      this.maximumTrekkenMassaGeremd,
      this.datumEersteToelating,
      this.datumEersteTenaamstellingInNederland,
      this.wachtOpKeuren,
      this.catalogusprijs,
      this.wamVerzekerd,
      this.aantalDeuren,
      this.aantalWielen,
      this.afstandHartKoppelingTotAchterzijdeVoertuig,
      this.afstandVoorzijdeVoertuigTotHartKoppeling,
      this.lengte,
      this.breedte,
      this.europeseVoertuigcategorie,
      this.technischeMaxMassaVoertuig,
      this.type,
      this.typegoedkeuringsnummer,
      this.variant,
      this.uitvoering,
      this.volgnummerWijzigingEuTypegoedkeuring,
      this.vermogenMassarijklaar,
      this.wielbasis,
      this.exportIndicator,
      this.openstaandeTerugroepactieIndicator,
      this.taxiIndicator,
      this.maximumMassaSamenstelling,
      this.aantalRolstoelplaatsen,
      this.maximumOndersteunendeSnelheid,
      this.jaarLaatsteRegistratieTellerstand,
      this.tellerstandoordeel,
      this.codeToelichtingTellerstandoordeel,
      this.tenaamstellenMogelijk,
      this.vervaldatumApkDt,
      this.datumTenaamstellingDt,
      this.datumEersteToelatingDt,
      this.datumEersteTenaamstellingInNederlandDt,
      this.zuinigheidsclassificatie,
      this.apiGekentekendeVoertuigenAssen,
      this.apiGekentekendeVoertuigenBrandstof,
      this.apiGekentekendeVoertuigenCarrosserie,
      this.apiGekentekendeVoertuigenCarrosserieSpecifiek,
      this.apiGekentekendeVoertuigenVoertuigklasse});

  RdwCarInformation.fromJson(Map<String?, dynamic> json) {
    kenteken = json['kenteken'];
    voertuigsoort = json['voertuigsoort'];
    merk = json['merk'];
    handelsbenaming = json['handelsbenaming'];
    vervaldatumApk = json['vervaldatum_apk'];
    datumTenaamstelling = json['datum_tenaamstelling'];
    brutoBpm = json['bruto_bpm'];
    inrichting = json['inrichting'];
    aantalZitplaatsen = json['aantal_zitplaatsen'];
    eersteKleur = json['eerste_kleur'];
    tweedeKleur = json['tweede_kleur'];
    aantalCilinders = json['aantal_cilinders'];
    cilinderinhoud = json['cilinderinhoud'];
    massaLedigVoertuig = json['massa_ledig_voertuig'];
    toegestaneMaximumMassaVoertuig = json['toegestane_maximum_massa_voertuig'];
    massaRijklaar = json['massa_rijklaar'];
    maximumMassaTrekkenOngeremd = json['maximum_massa_trekken_ongeremd'];
    maximumTrekkenMassaGeremd = json['maximum_trekken_massa_geremd'];
    datumEersteToelating = json['datum_eerste_toelating'];
    datumEersteTenaamstellingInNederland =
        json['datum_eerste_tenaamstelling_in_nederland'];
    wachtOpKeuren = json['wacht_op_keuren'];
    catalogusprijs = json['catalogusprijs'];
    wamVerzekerd = json['wam_verzekerd'];
    aantalDeuren = json['aantal_deuren'];
    aantalWielen = json['aantal_wielen'];
    afstandHartKoppelingTotAchterzijdeVoertuig =
        json['afstand_hart_koppeling_tot_achterzijde_voertuig'];
    afstandVoorzijdeVoertuigTotHartKoppeling =
        json['afstand_voorzijde_voertuig_tot_hart_koppeling'];
    lengte = json['lengte'];
    breedte = json['breedte'];
    europeseVoertuigcategorie = json['europese_voertuigcategorie'];
    technischeMaxMassaVoertuig = json['technische_max_massa_voertuig'];
    type = json['type'];
    typegoedkeuringsnummer = json['typegoedkeuringsnummer'];
    variant = json['variant'];
    uitvoering = json['uitvoering'];
    volgnummerWijzigingEuTypegoedkeuring =
        json['volgnummer_wijziging_eu_typegoedkeuring'];
    vermogenMassarijklaar = json['vermogen_massarijklaar'];
    wielbasis = json['wielbasis'];
    exportIndicator = json['export_indicator'];
    openstaandeTerugroepactieIndicator =
        json['openstaande_terugroepactie_indicator'];
    taxiIndicator = json['taxi_indicator'];
    maximumMassaSamenstelling = json['maximum_massa_samenstelling'];
    aantalRolstoelplaatsen = json['aantal_rolstoelplaatsen'];
    maximumOndersteunendeSnelheid = json['maximum_ondersteunende_snelheid'];
    jaarLaatsteRegistratieTellerstand =
        json['jaar_laatste_registratie_tellerstand'];
    tellerstandoordeel = json['tellerstandoordeel'];
    codeToelichtingTellerstandoordeel =
        json['code_toelichting_tellerstandoordeel'];
    tenaamstellenMogelijk = json['tenaamstellen_mogelijk'];
    vervaldatumApkDt = json['vervaldatum_apk_dt'];
    datumTenaamstellingDt = json['datum_tenaamstelling_dt'];
    datumEersteToelatingDt = json['datum_eerste_toelating_dt'];
    datumEersteTenaamstellingInNederlandDt =
        json['datum_eerste_tenaamstelling_in_nederland_dt'];
    zuinigheidsclassificatie = json['zuinigheidsclassificatie'];
    apiGekentekendeVoertuigenAssen = json['api_gekentekende_voertuigen_assen'];
    apiGekentekendeVoertuigenBrandstof =
        json['api_gekentekende_voertuigen_brandstof'];
    apiGekentekendeVoertuigenCarrosserie =
        json['api_gekentekende_voertuigen_carrosserie'];
    apiGekentekendeVoertuigenCarrosserieSpecifiek =
        json['api_gekentekende_voertuigen_carrosserie_specifiek'];
    apiGekentekendeVoertuigenVoertuigklasse =
        json['api_gekentekende_voertuigen_voertuigklasse'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = <String?, dynamic>{};
    data['kenteken'] = kenteken;
    data['voertuigsoort'] = voertuigsoort;
    data['merk'] = merk;
    data['handelsbenaming'] = handelsbenaming;
    data['vervaldatum_apk'] = vervaldatumApk;
    data['datum_tenaamstelling'] = datumTenaamstelling;
    data['bruto_bpm'] = brutoBpm;
    data['inrichting'] = inrichting;
    data['aantal_zitplaatsen'] = aantalZitplaatsen;
    data['eerste_kleur'] = eersteKleur;
    data['tweede_kleur'] = tweedeKleur;
    data['aantal_cilinders'] = aantalCilinders;
    data['cilinderinhoud'] = cilinderinhoud;
    data['massa_ledig_voertuig'] = massaLedigVoertuig;
    data['toegestane_maximum_massa_voertuig'] = toegestaneMaximumMassaVoertuig;
    data['massa_rijklaar'] = massaRijklaar;
    data['maximum_massa_trekken_ongeremd'] = maximumMassaTrekkenOngeremd;
    data['maximum_trekken_massa_geremd'] = maximumTrekkenMassaGeremd;
    data['datum_eerste_toelating'] = datumEersteToelating;
    data['datum_eerste_tenaamstelling_in_nederland'] =
        datumEersteTenaamstellingInNederland;
    data['wacht_op_keuren'] = wachtOpKeuren;
    data['catalogusprijs'] = catalogusprijs;
    data['wam_verzekerd'] = wamVerzekerd;
    data['aantal_deuren'] = aantalDeuren;
    data['aantal_wielen'] = aantalWielen;
    data['afstand_hart_koppeling_tot_achterzijde_voertuig'] =
        afstandHartKoppelingTotAchterzijdeVoertuig;
    data['afstand_voorzijde_voertuig_tot_hart_koppeling'] =
        afstandVoorzijdeVoertuigTotHartKoppeling;
    data['lengte'] = lengte;
    data['breedte'] = breedte;
    data['europese_voertuigcategorie'] = europeseVoertuigcategorie;
    data['technische_max_massa_voertuig'] = technischeMaxMassaVoertuig;
    data['type'] = type;
    data['typegoedkeuringsnummer'] = typegoedkeuringsnummer;
    data['variant'] = variant;
    data['uitvoering'] = uitvoering;
    data['volgnummer_wijziging_eu_typegoedkeuring'] =
        volgnummerWijzigingEuTypegoedkeuring;
    data['vermogen_massarijklaar'] = vermogenMassarijklaar;
    data['wielbasis'] = wielbasis;
    data['export_indicator'] = exportIndicator;
    data['openstaande_terugroepactie_indicator'] =
        openstaandeTerugroepactieIndicator;
    data['taxi_indicator'] = taxiIndicator;
    data['maximum_massa_samenstelling'] = maximumMassaSamenstelling;
    data['aantal_rolstoelplaatsen'] = aantalRolstoelplaatsen;
    data['maximum_ondersteunende_snelheid'] = maximumOndersteunendeSnelheid;
    data['jaar_laatste_registratie_tellerstand'] =
        jaarLaatsteRegistratieTellerstand;
    data['tellerstandoordeel'] = tellerstandoordeel;
    data['code_toelichting_tellerstandoordeel'] =
        codeToelichtingTellerstandoordeel;
    data['tenaamstellen_mogelijk'] = tenaamstellenMogelijk;
    data['vervaldatum_apk_dt'] = vervaldatumApkDt;
    data['datum_tenaamstelling_dt'] = datumTenaamstellingDt;
    data['datum_eerste_toelating_dt'] = datumEersteToelatingDt;
    data['datum_eerste_tenaamstelling_in_nederland_dt'] =
        datumEersteTenaamstellingInNederlandDt;
    data['zuinigheidsclassificatie'] = zuinigheidsclassificatie;
    data['api_gekentekende_voertuigen_assen'] = apiGekentekendeVoertuigenAssen;
    data['api_gekentekende_voertuigen_brandstof'] =
        apiGekentekendeVoertuigenBrandstof;
    data['api_gekentekende_voertuigen_carrosserie'] =
        apiGekentekendeVoertuigenCarrosserie;
    data['api_gekentekende_voertuigen_carrosserie_specifiek'] =
        apiGekentekendeVoertuigenCarrosserieSpecifiek;
    data['api_gekentekende_voertuigen_voertuigklasse'] =
        apiGekentekendeVoertuigenVoertuigklasse;
    return data;
  }
}
