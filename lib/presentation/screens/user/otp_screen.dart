import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/strings.dart';
import '../../view/custom_bin_code_view.dart';
import '../../widgets/app_background.dart';
import '../../widgets/custom_action_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:AppColors.transparent,
      body:SafeArea(
        child: Stack(
          children: [
           const AppBackground(),
            Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  vertical:8.0.h,
                  horizontal:6.0.h,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        otpTitle,
                        style:Theme.of(context).textTheme.titleLarge!.copyWith(
                          color:AppColors.white,
                          fontSize:30.sp,
                          fontWeight:FontWeight.w300
                        ),

                      ),
                      SizedBox(height:MediaQuery.sizeOf(context).height*0.12,),
                      CustomPinCodeFieldView(context:context),
                      SizedBox(height:MediaQuery.sizeOf(context).height*0.07,),
                      TextButton(
                          onPressed:(){},
                          child: Text(
                              textButtonName,
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color:AppColors.primary,
                              fontSize:16.sp,
                              fontWeight:FontWeight.w400
                            ),
                          ),
                      ),
                      SizedBox(height:MediaQuery.sizeOf(context).height*0.07,),
                      CustomActionButton(
                        text: 'Verify',
                        onTap:(){},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
