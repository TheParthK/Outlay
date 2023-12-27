import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outlay/Constants/colors.dart';
import 'package:outlay/Constants/intro_texts.dart';
import 'package:outlay/Screens/home.dart';
import 'package:outlay/Widgets/icon.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            SizedBox(height: devicePadding.top + 10,),
            Container(
              decoration: const BoxDecoration(
                // color: Colors.black,
              ),
              child: Center(
                child: OutlayIcon(
                  diameter: size.width-30,
                  star: true,
                  background: 'https://i.pinimg.com/564x/41/c6/ee/41c6ee0a5c17d59afaca1d2f11a7fa5d.jpg',
                  )
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                  // color: Colors.white,
                  margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                  ),
                  child: Center(
                    child: AnimatedTextKit(
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      animatedTexts: [
                        ...IntroTexts
                          .introTexts
                            .map(
                              (e) => 
                                FadeAnimatedText(
                                  e,
                                  duration: const Duration(milliseconds: 1500),
                                  textStyle: const TextStyle(
                                    backgroundColor: AppColors.bgColor,
                                    color: Colors.white,
                                    fontSize: 17
                                    )
                                  ),
                                ),
                        FadeAnimatedText(
                          'Outlay',
                          textStyle: const TextStyle(
                            fontFamily: 'Blackerbbi',
                            fontSize: 38,
                            backgroundColor: AppColors.bgColor,
                            color: Colors.white
                          ),
                          duration: const Duration(seconds: 5),
                          fadeInEnd: 0.1,
                          fadeOutBegin: 0.95
                        )
                      ],
                    ),
                  ),
                ),
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Hero(
                tag: 'intro-outro',
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(26)),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(26)),
                    splashColor: Colors.black.withAlpha(50),
                    onTap: () {
                      HapticFeedback.selectionClick();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      // margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                      decoration: const BoxDecoration(
                        // color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(27.5)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [                     
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/glogo.png'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          // OutlayIcon(diameter: 25, background: 'https://i.pinimg.com/564x/a6/42/cc/a642ccc7300fc88240094fb76c0021c6.jpg'),
                          const SizedBox(width: 10,),
                          const Icon(
                            CupertinoIcons.right_chevron,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Image credits: dribble',
              style: TextStyle(
                color: Colors.white.withAlpha(100),
                fontSize: 8
              ),
            ),
            SizedBox(height: devicePadding.bottom,)
          ],
        ),
      ),
    );
  }
}