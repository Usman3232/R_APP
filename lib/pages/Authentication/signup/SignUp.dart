import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Authentication/login/login.dart';
import 'package:r_app/pages/Authentication/select_outlet/SelectOutlet.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0, child: Image.asset('assets/images/bg.png')),
          Positioned(
            bottom: 0,
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
                    Container(
                      height: SizeConfig.heightMultiplier * 60,
                      width: SizeConfig.widthMultiplier * 100,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/Pen.png',
                                    height: SizeConfig.imageSizeMultiplier * 7,
                                  ),
                                  TextView(
                                    text: 'Sign Up',
                                    color: Color(0xff5B6974),
                                    size: SizeConfig.textMultiplier * 3,
                                  ),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      Get.to(Login());
                                    },
                                    child: TextView(
                                      text: 'Log In',
                                      color: AppColors.primarycolor,
                                      size: SizeConfig.textMultiplier * 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/signup.png',
                                height: SizeConfig.imageSizeMultiplier * 47,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 3,
                            ),
                            TextView(
                              text: 'Company Name',
                              size: SizeConfig.textMultiplier * 2,
                              color: AppColors.textcolour,
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
                                  inputType: TextInputType.emailAddress,
                                  cursorColor: AppColors.primarycolor),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            TextView(
                              text: 'Email Address',
                              size: SizeConfig.textMultiplier * 2,
                              color: AppColors.textcolour,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 6,
                              child: AuthTextInputField(
                                  hintText: 'Enter email address',
                                  hintcolor: AppColors.hintcolour,
                                  radius: 8,
                                  bordercolor: AppColors.textfieldbordercolor,
                                  inputType: TextInputType.emailAddress,
                                  cursorColor: AppColors.primarycolor),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 2,
                            ),
                            TextView(
                              text: 'Password',
                              size: SizeConfig.textMultiplier * 2,
                              color: AppColors.textcolour,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 1,
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 6,
                              child: AuthTextInputField(
                                  hintText: 'Enter Password',
                                  hintcolor: AppColors.hintcolour,
                                  radius: 8,
                                  isPassword: true,
                                  bordercolor: AppColors.textfieldbordercolor,
                                  inputType: TextInputType.number,
                                  cursorColor: AppColors.primarycolor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1,
                    ),
                    CustomAuthButton(
                      callback: () {
                        Get.to(SelectOutlet());
                      },
                      colour: AppColors.primarycolor,
                      textcolour: Colors.white,
                      height: SizeConfig.heightMultiplier * 6,
                      width: SizeConfig.widthMultiplier * 95,
                      title: 'Sign Up',
                      fontSize: SizeConfig.textMultiplier * 2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
