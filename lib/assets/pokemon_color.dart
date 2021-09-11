import 'package:flutter/material.dart';

class PokemonColor {
  String type;
  PokemonColor(this.type);

  Color getColor() {
    switch (type) {
      case "Type.FIRE":
        return Color(0xffEE8130);
        break;
      case "Type.WATER":
        return Color(0xff6390F0);
        break;
      case "Type.GRASS":
        return Color(0xff7AC74C);
        break;
      case "Type.ELECTRIC":
        return Color(0xffF7D02C);
        break;
      case "Type.ICE":
        return Color(0xff96D9D6);
        break;
      case "Type.FIGHTING":
        return Color(0xffC22E28);
        break;
      case "Type.POISON":
        return Color(0xffA33EA1);
        break;
      case "Type.GROUND":
        return Color(0xffE2BF65);
        break;
      case "Type.FLYING":
        return Color(0xffA98FF3);
        break;
      case "Type.NORMAL":
        return Color(0xffA8A77A);
        break;
      case "Type.PSYCHIC":
        return Color(0xffF95587);
        break;
      case "Type.BUG":
        return Color(0xffA6B91A);
        break;
      case "Type.ROCK":
        return Color(0xffB6A136);
      case "Type.GHOST":
        return Color(0xff735797);
      case "Type.DRAGON":
        return Color(0xff6F35FC);
      case "Type.DARK":
        return Color(0xff705746);
      case "Type.STEEL":
        return Color(0xffB7B7CE);
      case "Type.FAIRY":
        return Color(0xffD685AD);
        break;
      default:
        return Colors.white;
    }
  }
}
