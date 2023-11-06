
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        height: 100,
        width: 50,

        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            )),
      ),
    );
  }
}