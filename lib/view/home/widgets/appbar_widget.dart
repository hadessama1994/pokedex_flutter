import 'package:flutter/material.dart';
import 'package:pokedex/assets/colors_app.dart';
import 'package:pokedex/assets/fonts_app.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 40,
                  width: 330,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: ColorsApp.searchPrimary,
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                new BorderSide(color: ColorsApp.searchPrimary),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        labelText: "Search for a Pokemon",
                        labelStyle:
                            TextStyle(color: ColorsApp.searchSecondary)),
                  ),
                ),
              ),
              Icon(
                Icons.sort,
                color: ColorsApp.searchSecondary,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 50),
            child: Text(
              "The Pokédex contains detailed stats for every creature from the Pokémon games.",
              style: StyleApp.appBarPhrase,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    )));
  }
}
