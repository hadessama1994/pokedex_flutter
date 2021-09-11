import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/assets/fonts_app.dart';
import 'package:pokedex/assets/pokemon_color.dart';
import 'package:pokedex/controller/home_controller.dart';
import 'package:pokedex/view/home/widgets/pokecard_type_widget.dart';
import 'package:pokedex/view/home/widgets/single_pokemon_status_widget.dart';
import 'package:simple_animations/simple_animations.dart';

class SinglePokemon extends StatelessWidget {
  const SinglePokemon({Key key, this.id, this.image}) : super(key: key);
  final id;
  final image;

  @override
  Widget build(BuildContext context) {
    int pokemonId = id - 1;
    //Get.arguments - 1;

    HomeController c = Get.find();
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: PokemonColor(c
                                  .pokemons.value.pokemon[pokemonId].type[0]
                                  .toString())
                              .getColor(),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.elliptical(
                                  MediaQuery.of(context).size.width + 100,
                                  100.0))),
                      height: 400,
                      child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                  left: -40,
                                  top: -50,
                                  child: LoopAnimation<double>(
                                      tween: Tween<double>(
                                          begin: 0, end: 2 * 3.14),
                                      duration: Duration(seconds: 2),
                                      builder: (context, child, value) {
                                        return Transform.rotate(
                                          angle: value,
                                          child: Image.network(
                                            "https://raw.githubusercontent.com/RenatoLucasMota/PokedexFlutterYoutube/master/assets/images/pokeball.png",
                                            color: Colors.white12,
                                            height: 300,
                                          ),
                                        );
                                      })),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "#${c.pokemons.value.pokemon[pokemonId].num.toString()}",
                                        style: StyleApp.pokemonNumberSmall),
                                    Text(
                                      c.pokemons.value.pokemon[pokemonId].name,
                                      style: StyleApp.pokemonName,
                                    ),
                                    Row(
                                      children: [TypeWidget(id: id)],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 480,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Hero(
                          tag: "image${pokemonId}",
                          child: CachedNetworkImage(
                            cacheKey: "image${id - 1}",
                            height: 300,
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            imageUrl:
                                "https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${c.pokemons.value.pokemon[pokemonId].num.toString()}.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SinglePokemonStatusWidget(id: id),
        ],
      ),
    ));
  }
}
