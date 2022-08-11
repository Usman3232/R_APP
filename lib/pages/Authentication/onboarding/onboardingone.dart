import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Authentication/onboarding/components/upload_image.dart';
import 'package:r_app/pages/Authentication/onboarding/onboardingtwo.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class OnbardingOne extends StatelessWidget {
  const OnbardingOne({Key? key}) : super(key: key);

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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(child: Upload_image()),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 1, color: AppColors.textfieldbordercolor),
                  ),
                  child: Center(
                      child: TextView(
                          text: 'Flower Pte. Ltd.',
                          color: AppColors.textcolour,
                          size: SizeConfig.textMultiplier * 3)),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'ID',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5B6974),
                      size: SizeConfig.textMultiplier * 1.7,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1,
                    ),
                    TextView(
                      text: '1234567',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5B6974),
                      size: SizeConfig.textMultiplier * 1.7,
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    TextView(
                      text: 'UEN',
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
                      hintText: 'Enter UEN',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    TextView(
                      text: 'Outlet Name',
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
                      hintText: 'Enter name',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                TextView(
                  text: 'Outlet Address',
                  size: SizeConfig.textMultiplier * 2,
                  color: AppColors.textcolour,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                      hintText: 'Street Name',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                      hintText: 'Unit No.',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                      hintText: 'Postal Code',
                      hintcolor: AppColors.hintcolour,
                      radius: 8,
                      bordercolor: AppColors.textfieldbordercolor,
                      cursorColor: AppColors.primarycolor),
                ),
                TextView(
                  text: 'Contact No.',
                  size: SizeConfig.textMultiplier * 2,
                  color: AppColors.textcolour,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        width: 1, color: AppColors.textfieldbordercolor),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          TextView(text: '+65'),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down_outlined))
                        ],
                      ),
                      Expanded(
                        child: AuthTextInputField(
                            hintText: 'Enter No.',
                            hintcolor: AppColors.hintcolour,
                            radius: 8,
                            bordercolor: AppColors.textfieldbordercolor,
                            cursorColor: AppColors.primarycolor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                CustomAuthButton(
                  callback: () {Get.to(OnboardingTwo());},
                  colour: Color(0xffEFEFEF),
                  textcolour: Color(0xffB4B4B4),
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 95,
                  title: 'Next',
                  fontSize: SizeConfig.textMultiplier * 2,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
