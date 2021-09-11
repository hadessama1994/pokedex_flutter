import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/assets/pokemon_color.dart';
import 'package:pokedex/controller/home_controller.dart';

class TypeWidget extends StatelessWidget {
  final int id;
  const TypeWidget({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController c = Get.put(HomeController());
    return Column(
      children: [
        SizedBox(
          height: 25,
          width: 200,
          child: Container(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: c.pokemons.value.pokemon[id - 1].type.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: PokemonColor(c
                                    .pokemons.value.pokemon[id - 1].type[index]
                                    .toString())
                                .getColor(),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          child: Text(
                            c.pokemons.value.pokemon[id - 1].type[index]
                                .toString()
                                .replaceAll("Type.", "")
                                .toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
