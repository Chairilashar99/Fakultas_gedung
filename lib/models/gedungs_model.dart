class ListGedung {
  final int? id;
  final int? idGedung;
  final int? idFakultas;
  final String? slug;
  final String? namaGedung;
  final String? lat;
  final String? long;
  final dynamic maps;
  final DateTime createdAt;
  final DateTime updatedAt;

  ListGedung({
    required this.id,
    required this.idGedung,
    required this.idFakultas,
    required this.slug,
    required this.namaGedung,
    required this.lat,
    required this.long,
    required this.maps,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ListGedung.fromJson(Map<String, dynamic> json) => ListGedung(
        id: json["id"],
        idGedung: json["id_gedung"],
        idFakultas: json["id_fakultas"],
        slug: json["slug"],
        namaGedung: json["nama_gedung"],
        lat: json["lat"],
        long: json["long"],
        maps: json["maps"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );
}
