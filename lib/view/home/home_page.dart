import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get.dart';
import 'package:pokedex/assets/fonts_app.dart';
import 'package:pokedex/controller/home_controller.dart';
import 'package:pokedex/view/home/widgets/appbar_widget.dart';
import 'package:pokedex/view/home/widgets/pokecard_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeController c = Get.put(HomeController());

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xfffbfbfb),
          pinned: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SafeArea(top: true, child: AppBarWidget()),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Pokédex", style: StyleApp.appBarStyle)),
          ),
        ),
        Container(
            child: Obx(() => SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    child: PokecardWidget(
                      id: c.pokemons.value.pokemon[index].id,
                      name: c.pokemons.value.pokemon[index].name,
                      image: c
                          .getPokemonImage(c.pokemons.value.pokemon[index].num),
                      num: c.pokemons.value.pokemon[index].num,
                      types: c.pokemons.value.pokemon[index].type,
                    ),
                  );
                }, childCount: c.pokeLenght.value)))),
      ],
    ));
  }
}
