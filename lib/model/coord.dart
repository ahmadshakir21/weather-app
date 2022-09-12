class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  Map<String, dynamic> toMap() {
    return {
      "lon": lon,
      "lat": lat,
    };
  }

  factory Coord.fromMap(Map<String, dynamic> map) {
    return Coord(
      lon: map['lon'],
      lat: map['lat'],
    );
  }
}
