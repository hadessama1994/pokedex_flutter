import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pokedex/view/home/home_page.dart';
import 'package:pokedex/routes/app_pages.dart';
import 'package:pokedex/view/home/single_pokemon_page.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
  ));
}
