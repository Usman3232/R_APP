import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Home/HomeScreen/homepage.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class OnboardingTwo extends StatefulWidget {
  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: SizeConfig.heightMultiplier * 75,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    TextView(
                      text: 'Type of Business',
                      size: SizeConfig.textMultiplier * 2,
                      color: AppColors.textcolour,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icons/Question.png',
                      height: SizeConfig.heightMultiplier * 2.2,
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                      hintText: 'Select Business Type',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    TextView(
                      text: 'Tax for Our Services',
                      size: SizeConfig.textMultiplier * 2,
                      color: AppColors.textcolour,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icons/Question.png',
                      height: SizeConfig.heightMultiplier * 2.2,
                    )
                  ],
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 1, color: AppColors.textfieldbordercolor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: AuthTextInputField(
                            hintText: 'Enter Amount',
                            hintcolor: AppColors.hintcolour,
                            fillColor: Colors.white,
                            radius: 8,
                            bordercolor: AppColors.textfieldbordercolor,
                            cursorColor: AppColors.primarycolor),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 3,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.percent,
                            size: SizeConfig.heightMultiplier * 2.5,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                TextView(
                  text: 'Do you sell products?',
                  size: SizeConfig.textMultiplier * 2,
                  color: AppColors.textcolour,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    TextView(
                      text: 'Tax for Our Products',
                      size: SizeConfig.textMultiplier * 2,
                      color: AppColors.textcolour,
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icons/Question.png',
                      height: SizeConfig.heightMultiplier * 2.2,
                    )
                  ],
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 1, color: AppColors.textfieldbordercolor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: AuthTextInputField(
                            hintText: 'Enter Amount',
                            hintcolor: AppColors.hintcolour,
                            fillColor: Colors.white,
                            radius: 8,
                            bordercolor: AppColors.textfieldbordercolor,
                            cursorColor: AppColors.primarycolor),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 3,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.percent,
                            size: SizeConfig.heightMultiplier * 2.5,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 10,
                ),
                CustomAuthButton(
                  callback: () {Get.to(HomePage());},
                  colour: Color(0xffEFEFEF),
                  textcolour: Color(0xffB4B4B4),
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 95,
                  title: 'LEts Get Started',
                  fontSize: SizeConfig.textMultiplier * 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
