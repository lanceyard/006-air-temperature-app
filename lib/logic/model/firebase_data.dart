class FirebaseData {
  final double airHumidity;
  final double airTemperature;
  final bool isRaining;
  final int lightIntensity;
  final bool roofMoverStatus;
  final String soilMoisture;

  FirebaseData({
    required this.airHumidity,
    required this.airTemperature,
    required this.isRaining,
    required this.lightIntensity,
    required this.roofMoverStatus,
    required this.soilMoisture,
  });

  factory FirebaseData.fromJson(Map<String, dynamic> json) {
    return FirebaseData(
      airHumidity: json['airHumidity'],
      airTemperature: json['airTemperature'],
      isRaining: json['isRaining'],
      lightIntensity: json['lightIntensity'],
      roofMoverStatus: json['roofMoverStatus'],
      soilMoisture: json['soilMoisture'],
    );
  }
}
