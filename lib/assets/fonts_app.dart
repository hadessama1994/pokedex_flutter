import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/assets/colors_app.dart';

class StyleApp {
  static final appBarStyle = GoogleFonts.roboto(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: ColorsApp.appBarLogo),
  );

  static final appBarPhrase = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: ColorsApp.appBarPhrase),
  );

  static final pokemonName = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: Colors.white),
  );

  static final pokemonNumber = GoogleFonts.roboto(
    fontSize: 55,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: Colors.white60),
  );

  static final pokemonNumberSmall = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: Colors.white70),
  );
}
