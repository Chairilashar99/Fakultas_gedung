class ListFakultas {
  final int? id;
  final int? idUser;
  final int? idFakultas;
  final String? namaResmi;
  final String? namaSingkat;
  final String? namaAsing;
  final String? namaAsingSingkat;
  final String? lat;
  final String? long;
  final String? area;
  final dynamic maps;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ListFakultas({
    this.id,
    this.idUser,
    this.idFakultas,
    this.namaResmi,
    this.namaSingkat,
    this.namaAsing,
    this.namaAsingSingkat,
    this.lat,
    this.long,
    this.area,
    this.maps,
    this.createdAt,
    this.updatedAt,
  });

  factory ListFakultas.fromJson(Map<String, dynamic> json) => ListFakultas(
        id: json["id"],
        idUser: json["id_user"],
        idFakultas: json["id_fakultas"],
        namaResmi: json["nama_resmi"],
        namaSingkat: json["nama_singkat"],
        namaAsing: json["nama_asing"],
        namaAsingSingkat: json["nama_asing_singkat"],
        lat: json["lat"],
        long: json["long"],
        area: json["area"],
        maps: json["maps"],
        createdAt: json["createdAt"] != null
            ? DateTime.parse(json["createdAt"])
            : null,
        updatedAt: json["updatedAt"] != null
            ? DateTime.parse(json["updatedAt"])
            : null,
      );
}
