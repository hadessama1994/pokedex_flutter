import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pokedex/data/model/pokemon.dart';
import 'package:pokedex/data/repository/pokemon_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  var pokemons = PokemonModel().obs;
  var pokeLenght = 0.obs;

  PokemonRepository repository = PokemonRepository();

  @override
  void onInit() {
    super.onInit();
    getPokemons();
  }

  void getPokemons() async {
    try {
      pokemons.value = await repository.fetchPokemon();
      getPokemonLenght();
      change(pokemons, status: RxStatus.success());
    } catch (e) {}
  }

  getPokemonImage(String pokeId) {
    return "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${pokeId}.png";
  }

  getPokemonLenght() {
    pokeLenght.value = pokemons.value.pokemon.length;
    return pokeLenght.value;
  }
}
