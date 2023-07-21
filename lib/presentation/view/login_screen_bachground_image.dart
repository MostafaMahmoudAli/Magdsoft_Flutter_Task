import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../constants/strings.dart';

class LoginScreenBackgroundImage extends StatelessWidget {
  const LoginScreenBackgroundImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Image(
        image: Svg(
          loginImage,
          size: Size(
            MediaQuery.sizeOf(context).width,
            MediaQuery.sizeOf(context).width,
          ),
        ),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
