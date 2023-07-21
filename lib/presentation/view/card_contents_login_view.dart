import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/strings.dart';
import '../styles/colors.dart';
import '../widgets/custom_action_button.dart';
import '../widgets/custom_text_form_field.dart';

class CardContentsLoginView extends StatelessWidget {
   const CardContentsLoginView({Key? key, required this.nameController, required this.phoneController}) : super(key: key);
   final TextEditingController nameController ;
   final TextEditingController phoneController ;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Welcome',
          style:Theme.of(context).textTheme.displayLarge,
        ),
        Divider(
          thickness: 4,
          endIndent: 20.w,
          indent: 20.w,
          color: AppColors.primary.withOpacity(0.7),
        ),
        SizedBox(
          height:MediaQuery.sizeOf(context).height*0.03,
        ),
        Padding(
          padding:  EdgeInsetsDirectional.only(
            start: MediaQuery.sizeOf(context).width * 0.07,
            end: MediaQuery.sizeOf(context).width * 0.07,
            bottom: MediaQuery.sizeOf(context).height*0.02,
          ),
          child: Material(
            elevation: 10,
            shadowColor:AppColors.black,
            child: CustomTextField(
              controller: nameController,
              keyboardType:TextInputType.text,
              decoration:InputDecoration(
                  hintText:loginNameTextField,
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20.0),
                  ),
                  fillColor:AppColors.white,
                  filled:true,
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(
                      color:AppColors.white,
                    ),
                  ),
                  hintStyle:Theme.of(context).textTheme.displaySmall
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal:MediaQuery.sizeOf(context).width * 0.07,
          ),
          child: Material(
            elevation: 10,
            shadowColor:AppColors.black,
            child: CustomTextField(
              controller: phoneController,
              keyboardType:TextInputType.phone,
              decoration:InputDecoration(
                  hintText:loginPhoneTextField,
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20.0),
                  ),
                  enabledBorder:const OutlineInputBorder(
                    borderSide:BorderSide(
                      color:AppColors.white,
                    ),
                  ),
                  fillColor:AppColors.white,
                  filled:true,
                  hintStyle:Theme.of(context).textTheme.displaySmall
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
            horizontal:MediaQuery.sizeOf(context).width* 0.08,
            vertical: MediaQuery.sizeOf(context).height *0.03,
          ),
          child: CustomActionButton(
            text:'Login',
            onTap: (){},
          ),
        ),
      ],
    );
  }
}
