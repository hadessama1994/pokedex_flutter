import 'package:get/get.dart';
import 'package:pokedex/view/home/home_page.dart';
import 'package:pokedex/view/home/single_pokemon_page.dart';
part './routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.POKEMON,
      page: () => SinglePokemon(),
    ),
  ];
}
