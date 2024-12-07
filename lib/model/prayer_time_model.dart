class PrayerTimeModel {
  String status;
  Map<String, dynamic> timings;

  PrayerTimeModel({required this.status, required this.timings});
  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimeModel(
        status: json["status"], timings: json["data"]["timings"]);
  }
}
