import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoneyChip extends StatelessWidget {
  final String text;
  final bool? active;
  const MoneyChip({super.key, required this.text, this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.5),
      child: InkWell(
        splashColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        onTap: () {
          
        },
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: active ?? false ? Colors.white : Colors.white.withAlpha(51),
            borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: active ?? false ? Colors.black : Colors.white.withAlpha(125) 
              ),
            ),
          ) ,
        ),
      ),
    );
  }
}