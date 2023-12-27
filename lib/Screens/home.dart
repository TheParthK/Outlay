import 'package:flutter/material.dart';
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
            tag: 'intro-outro',
            child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/outlay.png',
                  ),
                  scale: 10,
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage('https://i.pinimg.com/564x/a8/52/2d/a8522d5ba51d94caae3deb107d557de7.jpg'),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
}