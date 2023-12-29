import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlay/Widgets/Home/chip.dart';
import 'package:outlay/Widgets/icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: devicePadding.top + 10,),
          Hero(
            tag: 'intro-outro_',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children:  [
                  Text(
                    'My Dashboard',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.width/18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    splashColor: Colors.grey,
                    onTap: () {
                      
                    },
                    child: Ink(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(40),
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: NetworkImage('https://i.pinimg.com/736x/17/16/56/17165678550da3d0b08a7b37ebf9cb00.jpg'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          const Text(
                            'Parth K.',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              CupertinoIcons.chevron_down,
                              color: Colors.white.withAlpha(150),
                              size: 12,
                            ),
                          ),
                          const SizedBox(width: 3 ,)
                        ],
                      ),
                    ),
                  )
                ],  
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Text(
              'Money Spent',
              style: GoogleFonts.poppins(
                color: Colors.white.withAlpha(150),
                fontSize: 13
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            child: Text(
              '₹12,654.74',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width/8
              ),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(width: 6,),
                MoneyChip(text: 'Today', active: true,),
                MoneyChip(text: 'This Week'),
                MoneyChip(text: 'This Month'),
                MoneyChip(text: 'Last 6 Months'),
                MoneyChip(text: '+'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

