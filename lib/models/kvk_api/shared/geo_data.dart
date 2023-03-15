/// GeoData is a model class for the GeoData object in the KVK API
class KVKapiGeoData {
  String? addresseerbaarObjectId;
  String? nummerAanduidingId;
  double? gpsLatitude;
  double? gpsLongitude;
  double? rijksdriehoekX;
  double? rijksdriehoekY;
  double? rijksdriehoekZ;

  KVKapiGeoData(
      {this.addresseerbaarObjectId,
      this.nummerAanduidingId,
      this.gpsLatitude,
      this.gpsLongitude,
      this.rijksdriehoekX,
      this.rijksdriehoekY,
      this.rijksdriehoekZ});

  KVKapiGeoData.fromJson(Map<String, dynamic> json) {
    addresseerbaarObjectId = json['addresseerbaarObjectId'];
    nummerAanduidingId = json['nummerAanduidingId'];
    gpsLatitude = json['gpsLatitude'];
    gpsLongitude = json['gpsLongitude'];
    rijksdriehoekX = json['rijksdriehoekX'];
    rijksdriehoekY = json['rijksdriehoekY'];
    rijksdriehoekZ = json['rijksdriehoekZ'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['addresseerbaarObjectId'] = addresseerbaarObjectId;
    data['nummerAanduidingId'] = nummerAanduidingId;
    data['gpsLatitude'] = gpsLatitude;
    data['gpsLongitude'] = gpsLongitude;
    data['rijksdriehoekX'] = rijksdriehoekX;
    data['rijksdriehoekY'] = rijksdriehoekY;
    data['rijksdriehoekZ'] = rijksdriehoekZ;
    return data;
  }
}
