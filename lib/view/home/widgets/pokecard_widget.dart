import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/assets/fonts_app.dart';
import 'package:pokedex/assets/pokemon_color.dart';
import 'package:pokedex/view/home/single_pokemon_page.dart';
import 'package:pokedex/view/home/widgets/pokecard_type_widget.dart';
import 'package:pokedex/routes/app_pages.dart';

class PokecardWidget extends StatelessWidget {
  final num;
  final name;
  final image;
  final types;
  final int id;

  const PokecardWidget(
      {Key key, this.id, this.num, this.name, this.image, this.types})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Get.toNamed(Routes.POKEMON, arguments: id);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SinglePokemon(id: id, image: image)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          height: 120,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: PokemonColor(types[0].toString()).getColor(),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Hero(
                        tag: "image${id - 1}",
                        child: CachedNetworkImage(
                          cacheKey: "image${id - 1}",
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          imageUrl: image,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name,
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
              ),
              Positioned(
                bottom: -15,
                right: 0,
                child: Text(
                  num,
                  style: StyleApp.pokemonNumber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
