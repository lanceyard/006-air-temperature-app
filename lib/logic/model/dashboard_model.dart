class Dashboard {
  int? airTemperature;
  int? soilMoisture;
  int? airHumidity;
  int? pHLevel;
  int? waterReservoir;
  bool? roofMoverStatus;
  bool? wateringStatus;

  Dashboard(
      {this.airTemperature,
      this.soilMoisture,
      this.airHumidity,
      this.pHLevel,
      this.waterReservoir,
      this.roofMoverStatus,
      this.wateringStatus});

  Dashboard.fromJson(Map<String, dynamic> json) {
    airTemperature = json['airTemperature'];
    soilMoisture = json['soilMoisture'];
    airHumidity = json['airHumidity'];
    pHLevel = json['pHLevel'];
    waterReservoir = json['waterReservoir'];
    roofMoverStatus = json['roofMoverStatus'];
    wateringStatus = json['wateringStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['airTemperature'] = this.airTemperature;
    data['soilMoisture'] = this.soilMoisture;
    data['airHumidity'] = this.airHumidity;
    data['pHLevel'] = this.pHLevel;
    data['waterReservoir'] = this.waterReservoir;
    data['roofMoverStatus'] = this.roofMoverStatus;
    data['wateringStatus'] = this.wateringStatus;
    return data;
  }
}
