import 'package:flutter/material.dart';
import '../../../constants/strings.dart';
import '../../styles/colors.dart';
import '../../view/help_body_view.dart';
import '../../widgets/custom_action_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child:Container(
          width: double.infinity,
          height: double.infinity,
          decoration:BoxDecoration(
            gradient:LinearGradient(
              begin:Alignment.topCenter,
              colors: [
                AppColors.primary,
                AppColors.white
              ],
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(
              right:MediaQuery.sizeOf(context).width * 0.05,
              left:MediaQuery.sizeOf(context).width * 0.05,
              top:MediaQuery.sizeOf(context).height * 0.06,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HelpBodyView(),
                CustomActionButton(
                    text:helpButtonName,
                    onTap: (){}
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
