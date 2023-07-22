import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../styles/colors.dart';

class HelpBodyView extends StatelessWidget {
  const HelpBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 10),
        physics:const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Material(
          elevation: 10.0,
          shadowColor: AppColors.black,
          child: ExpansionTile(
            title: Text(
              "Accounts",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            backgroundColor: AppColors.white,
            collapsedBackgroundColor: AppColors.white,
            children: [
              ListTile(
                title: Text(
                  "You need to create an account to use the application but you can delete your account any time you want ",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) =>  SizedBox(
          height: 2.h,
        ),
        itemCount: 10,
      ),
    );
  }
}
