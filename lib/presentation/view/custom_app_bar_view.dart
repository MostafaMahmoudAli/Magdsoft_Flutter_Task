import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/presentation/styles/colors.dart';
import 'package:sizer/sizer.dart';

import '../../constants/strings.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Container(
          width:73.w,
          height: 6.h,
          padding:EdgeInsets.symmetric(
            horizontal:3.0.w,
          ),
          decoration:BoxDecoration(
            color:AppColors.white,
            borderRadius:BorderRadius.circular(10.0),
          ),
          child:Row(
            children: [
              Text(
                  customHomeAppBarText,
                style:Theme.of(context).textTheme.displaySmall!.copyWith(
                   fontSize:15.0.sp,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.search_outlined,
                color:AppColors.grey,
              ),
            ],
          ),
        ),
        SizedBox(
          width:MediaQuery.sizeOf(context).width *0.04,
        ),
        Container(
          width:12.w,
          height: 6.h,
          decoration:BoxDecoration(
            color:AppColors.white,
            borderRadius:BorderRadius.circular(10.0),
          ),
          child:Icon(
            Icons.science_outlined,
          ),
        ),
      ],
    );
  }
}
