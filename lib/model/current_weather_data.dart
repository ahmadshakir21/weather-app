import 'package:weather_app/model/cloud.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/model/wind.dart';

class CurrentWeatherData {
  CurrentWeatherData({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  factory CurrentWeatherData.fromMap(Map<String, dynamic> json) =>
      CurrentWeatherData(
        coord: Coord.fromMap(json["coord"]),
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromMap(x))),
        base: json["base"],
        main: Main.fromMap(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromMap(json["wind"]),
        clouds: Clouds.fromMap(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromMap(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  Map<String, dynamic> toMap() => {
        "coord": coord!.toMap(),
        "weather": List<dynamic>.from(weather!.map((x) => x.toMap())),
        "base": base,
        "main": main!.toMap(),
        "visibility": visibility,
        "wind": wind!.toMap(),
        "clouds": clouds!.toMap(),
        "dt": dt,
        "sys": sys!.toMap(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };
}
