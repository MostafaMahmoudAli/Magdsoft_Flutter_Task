import 'package:flutter/material.dart';
import '../styles/colors.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.055,
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(20),),
          gradient:LinearGradient(
            end:Alignment.bottomRight,
            colors: [
              AppColors.primary,
              AppColors.primary.withOpacity(.4),
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall
            ),
          ),
        ),
      );
  }
}