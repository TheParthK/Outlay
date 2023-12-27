import 'package:flutter/material.dart';
import 'package:outlay/Constants/colors.dart';

class OutlayIcon extends StatelessWidget {
  final double diameter;
  final String background;
  final bool star;
  const OutlayIcon({super.key, required this.diameter, required this.background, required this.star});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: diameter,
        height: diameter,
        padding: EdgeInsets.all(0.07*diameter),
        decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(diameter)),
          image: DecorationImage(
            image: NetworkImage(
              // 'https://i.pinimg.com/originals/07/c6/53/07c6536abc63ede80e6c6b58a830f6f5.gif'
              // 'https://i.pinimg.com/564x/4a/48/13/4a4813a845924859082b453a5fb1dc39.jpg',
              background
            ),
            fit: BoxFit.cover,

          )
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 0.7 * (diameter),
            height: 0.7 * (diameter),
            decoration: BoxDecoration(
              color: background == '' ? Colors.white : AppColors.bgColor,
              borderRadius: BorderRadius.all(Radius.circular(diameter))
            ),
            child: Center(
              child: star? Container(
                width: 0.3 * diameter,
                height: 0.3 * diameter,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://media0.giphy.com/media/1BeE7pCRWrvxJgdTib/giphy.gif?cid=6c09b952jw0nw0hhaihvjp397rakzr9lxr07aqz5pfqma700&ep=v1_stickers_related&rid=giphy.gif&ct=s'
                    )
                  )
                ),
              ) : const SizedBox(),
            ),
          ),
        ),
      );
  }
}