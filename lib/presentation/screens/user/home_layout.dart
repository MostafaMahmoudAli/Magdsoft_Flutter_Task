import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../styles/colors.dart';
import '../../view/custom_app_bar_view.dart';

class HomeLayOut extends StatelessWidget {
  const HomeLayOut({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity,
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
          padding:EdgeInsets.symmetric(
            vertical:MediaQuery.sizeOf(context).height * 0.06,
            horizontal:MediaQuery.sizeOf(context).width * 0.055,
          ),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              const CustomAppBarView(),
              SizedBox(height:10.0.h,),
              Stack(
                children: [
                  Container(
                    width:50.w,
                    height: 35.0.h,
                    decoration:BoxDecoration(
                      color:AppColors.white,
                      borderRadius:BorderRadius.circular(20.0),
                      boxShadow:[
                        BoxShadow(
                            blurRadius:10.0,
                            color:AppColors.grey
                        ),
                      ],
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:50.w,
                          height:20.0.h,
                          decoration:BoxDecoration(
                            color:AppColors.white,
                            borderRadius:BorderRadius.circular(20.0),
                            boxShadow:[
                              BoxShadow(
                                blurRadius:10.0,
                                color:AppColors.grey
                              ),
                            ],
                          ),
                          child:Image.network(""),
                        ),
                        SizedBox(height:2.0.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(
                            horizontal:2.0.w,
                          ),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Razer",
                                style:Theme.of(context).textTheme.displayMedium,
                              ),
                              Text(
                                "Razer blade Stealth",
                                style:Theme.of(context).textTheme.displaySmall,
                              ),
                              SizedBox(height:2.0.h,),
                              Text(
                                "32000",
                                style:Theme.of(context).textTheme.displaySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width:10.0.w,
                      height:4.0.h,
                      decoration:const BoxDecoration(
                        color:AppColors.primary,
                        borderRadius:BorderRadius.only(
                          topLeft:Radius.circular(20.0),
                          bottomRight:Radius.circular(20.0),
                        ),
                      ),
                      child:const Icon(
                        Icons.add,
                        color:AppColors.white,
                      ),
                    ),
                  ),
                  const Positioned(
                    top:5.0,
                    right:5.0,
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color:AppColors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
