class FiveDaysData {
  String? dateTime;
  int? temp;

  FiveDaysData({this.dateTime, this.temp});

  Map<String, dynamic> toMap() {
    return {
      "dateTime": dateTime,
      "temp": temp,
    };
  }

  factory FiveDaysData.fromMap(Map<String, dynamic> map) {
    return FiveDaysData(
      dateTime: map['dateTime'],
      temp: map['temp'],
    );
  }
}
