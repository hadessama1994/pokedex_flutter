import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/assets/pokemon_color.dart';
import 'package:pokedex/controller/home_controller.dart';
import 'package:pokedex/view/home/widgets/pokemon_status_detail.dart';

class SinglePokemonStatusWidget extends StatelessWidget {
  const SinglePokemonStatusWidget({Key key, this.id}) : super(key: key);
  final id;
  @override
  Widget build(BuildContext context) {
    HomeController c = Get.find();
    return Container(
      child: Container(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text("Status",
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        textStyle: TextStyle(
                            color: PokemonColor(c
                                    .pokemons.value.pokemon[id - 1].type[0]
                                    .toString())
                                .getColor()))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.hp
                          .toDouble(),
                      title: "HP",
                    ),
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.attack
                          .toDouble(),
                      title: "ATK",
                    ),
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.attack
                          .toDouble(),
                      title: "DEF",
                    ),
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.spAtk
                          .toDouble(),
                      title: "SP-ATK",
                    ),
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.spDef
                          .toDouble(),
                      title: "SP-DEF",
                    ),
                    PokemonStatusDetail(
                      value: c.pokemons.value.pokemon[id - 1].pokeDetail[id - 1]
                          .stats.speed
                          .toDouble(),
                      title: "SPD",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
