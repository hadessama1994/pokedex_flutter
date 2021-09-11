// To parse this JSON data, do
//
//     final pokemonDetailModel = pokemonDetailModelFromJson(jsonString);

import 'dart:convert';

PokemonDetailModel pokemonDetailModelFromJson(String str) =>
    PokemonDetailModel.fromJson(json.decode(str));

String pokemonDetailModelToJson(PokemonDetailModel data) =>
    json.encode(data.toJson());

class PokemonDetailModel {
  PokemonDetailModel({
    this.pokemonDetail,
  });

  List<PokemonDetail> pokemonDetail;

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) =>
      PokemonDetailModel(
        pokemonDetail: List<PokemonDetail>.from(
            json["pokemonDetail"].map((x) => PokemonDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pokemonDetail":
            List<dynamic>.from(pokemonDetail.map((x) => x.toJson())),
      };
}

class PokemonDetail {
  PokemonDetail({
    this.id,
    this.name,
    this.type,
    this.stats,
    this.price,
  });

  int id;
  String name;
  List<String> type;
  Stats stats;
  double price;

  factory PokemonDetail.fromJson(Map<String, dynamic> json) => PokemonDetail(
        id: json["id"],
        name: json["name"],
        type: List<String>.from(json["type"].map((x) => x)),
        stats: Stats.fromJson(json["stats"]),
        price: json["price"] == null ? null : json["price"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": List<dynamic>.from(type.map((x) => x)),
        "stats": stats.toJson(),
        "price": price == null ? null : price,
      };
}

class Stats {
  Stats({
    this.total,
    this.hp,
    this.attack,
    this.defense,
    this.spAtk,
    this.spDef,
    this.speed,
  });

  int total;
  int hp;
  int attack;
  int defense;
  int spAtk;
  int spDef;
  int speed;

  factory Stats.fromJson(Map<String, dynamic> json) => Stats(
        total: json["total"],
        hp: json["hp"],
        attack: json["attack"],
        defense: json["defense"],
        spAtk: json["sp-atk"],
        spDef: json["sp-def"],
        speed: json["speed"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "hp": hp,
        "attack": attack,
        "defense": defense,
        "sp-atk": spAtk,
        "sp-def": spDef,
        "speed": speed,
      };
}
