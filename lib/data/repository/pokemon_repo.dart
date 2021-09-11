import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex/data/model/pokemon.dart';
import 'package:pokedex/data/model/pokemon_detailed.dart';

class PokemonRepository {
  var url = Uri.parse(
      'https://raw.githubusercontent.com/hadessama1994/PokemonGO-Pokedex/master/pokedex.json');
  var urlDetail = Uri.parse(
      'https://raw.githubusercontent.com/hadessama1994/PokemonGO-Pokedex/master/pokedexdetail');

  fetchPokemon() async {
    PokemonModel pokeModel = await getPokemon();
    PokemonDetailModel pdm = await getPokemonDetail();

    for (int i = 0; i < pokeModel.pokemon.length; i++) {
      //pokeModel.pokemon[i].pokeDetail.add(pdm.pokemonDetail[i]);

      pokeModel.pokemon[i].pokeDetail =
          pdm.pokemonDetail.map((v) => v).toList();
    }

    return pokeModel;
  }

  Future<PokemonModel> getPokemon() async {
    final res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    PokemonModel pokeModel = PokemonModel.fromJson(decodedJson);

    return pokeModel;
  }

  Future<PokemonDetailModel> getPokemonDetail() async {
    final response = await http.get(urlDetail);
    var decodedJson = jsonDecode(response.body);

    PokemonDetailModel pokeDetailModel =
        PokemonDetailModel.fromJson(decodedJson);

    return pokeDetailModel;
  }
}
