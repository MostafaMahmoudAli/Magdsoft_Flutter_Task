import 'package:flutter/material.dart';

import '../styles/colors.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      decoration: const BoxDecoration(
        gradient:LinearGradient(
          begin:Alignment.topCenter,
          colors: [
            AppColors.primary,
            AppColors.white
          ],
        ),
      ),
    );
  }
}
