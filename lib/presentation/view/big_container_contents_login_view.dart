import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:sizer/sizer.dart';
import '../../constants/strings.dart';
import '../styles/colors.dart';

class BigContainerContentsLoginView extends StatelessWidget {
  const BigContainerContentsLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height:MediaQuery.sizeOf(context).height * 0.38,
        ),
        Row(
          children: [
            Expanded(
              child: Divider(
                color:AppColors.primary.withOpacity(0.5),
                height: 1.0.h,
                thickness:1.5,
                indent:5.0.w,
              ),
            ),
            SizedBox(
              width: 5.0.w,
            ),
            Text(
              'OR',
              style: TextStyle(
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              width: 3.0.w,
            ),
            Expanded(
              child: Divider(
                color:AppColors.primary.withOpacity(0.5),
                height: 1.0.h,
                thickness:1.5,
                endIndent:5.0.w,
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Material(
              elevation: 40,
              shadowColor:AppColors.black87,
              borderRadius:BorderRadius.circular(30.0),
              child: CircleAvatar(
                radius: 30,
                child: Image(
                  image:Svg(loginFacebookLogo),
                ),
                backgroundColor:AppColors.white,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width *0.08,
            ),
            Material(
              elevation: 40,
              shadowColor:AppColors.black87,
              borderRadius:BorderRadius.circular(30.0),
              child: CircleAvatar(
                radius: 30,
                child:Image(
                  image:Svg(loginAppleLogo),
                ),
                backgroundColor:AppColors.white,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width *0.08,
            ),
            Material(
              elevation: 40,
              color:AppColors.transparent,
              shadowColor:AppColors.black87,
              borderRadius:BorderRadius.circular(30.0),
              child: CircleAvatar(
                radius: 30,
                child:Image(
                  image:Svg(loginGoogleLogo),
                ),
                backgroundColor:AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
