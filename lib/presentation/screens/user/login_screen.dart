import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/presentation/styles/colors.dart';
import '../../view/card_contents_login_view.dart';
import '../../view/login_screen_bachground_image.dart';
import '../../view/big_container_contents_login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var nameController =TextEditingController();
    var phoneController =TextEditingController();
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
        const LoginScreenBackgroundImage(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height:MediaQuery.sizeOf(context).height* 0.65,
              width: double.infinity,
              decoration:const BoxDecoration(
                color:AppColors.white,
                borderRadius:BorderRadius.only(
                  topRight:Radius.circular(60.0),
                  topLeft:Radius.circular(60.0),
                ),
              ),
              child: const BigContainerContentsLoginView(),
            ),
          ),
          Positioned(
            top: 170,
            right: 30,
            left: 30,
            height:MediaQuery.sizeOf(context).height* 0.4,
            child: Card(
              elevation: 5,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(40)
             ),
              child:CardContentsLoginView(
                nameController: nameController,
                phoneController: phoneController,
              ) ,
            ),
          ),
        ],
       ),
       );
  }
}
