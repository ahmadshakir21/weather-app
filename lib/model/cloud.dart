class Clouds {
  int? all;

  Clouds({
    this.all,
  });

  factory Clouds.fromMap(Map<String, dynamic> json) => Clouds(
        all: json["all"],
      );

  Map<String, dynamic> toMap() => {
        "all": all,
      };
}
