import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocalAssets extends StatelessWidget{

  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  LocalAssets({
    Key? key,
    required this.imagePath,
    this.height,
    this.width,
    this.boxFit
  });

  @override
  Widget build(BuildContext context) {
    return imagePath.split('.').last != 'svg'
        ? Image.asset(
      imagePath,
      height: height,
      width: width,
      fit: boxFit ?? BoxFit.contain,
    ) : SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
    );
  }

}