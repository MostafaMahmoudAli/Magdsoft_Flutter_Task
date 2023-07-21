import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/presentation/styles/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';


class CustomPinCodeFieldView extends StatelessWidget {
  const CustomPinCodeFieldView(
      {
        Key? key, required this.context,
        // required this.pinCodeController,
        // required this.onChange
      })
      : super(key: key);
  // final TextEditingController pinCodeController;
  // final Function(String) onChange;
 final BuildContext context;


  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 4,
      autoFocus:true,
      keyboardType:TextInputType.number,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 8.h,
        fieldWidth: 15.w,
        activeColor:AppColors.white,
        activeFillColor: AppColors.white,
        inactiveColor:AppColors.white,
        selectedColor:AppColors.white,
        selectedFillColor: AppColors.white,
        inactiveFillColor: AppColors.white,
        errorBorderColor:AppColors.red,
        activeBoxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: AppColors.transparent,
      enableActiveFill: true,
      onCompleted: (code) {
        // otpCode = code;
        print("Completed");
      },
      onChanged:(value)
      {
        print(value);
      },
      appContext: context,
    );
  }
}
