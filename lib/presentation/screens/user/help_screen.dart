import 'package:flutter/material.dart';

import '../../widgets/app_background.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          const AppBackground(),
          Column(
            children: [

            ],
          ),
        ],
      )
    );
  }
}
