import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonStatusDetail extends StatelessWidget {
  final value;
  final title;
  const PokemonStatusDetail({Key key, this.value, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              title,
              style: GoogleFonts.robotoCondensed(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SizedBox(width: 60, child: Text(value.toString())),
          ),
          SizedBox(
            width: value,
            child: LinearProgressIndicator(
              value: 1,
              minHeight: 10,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
