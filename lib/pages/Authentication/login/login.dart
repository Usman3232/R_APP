import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Authentication/forgot_password/ForgotPassword.dart';
import 'package:r_app/pages/Authentication/select_outlet/SelectOutlet.dart';
import 'package:r_app/pages/Authentication/signup/SignUp.dart';
import 'package:r_app/pages/Home/HomeScreen/homepage.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/images/bg.png',
                height: SizeConfig.imageSizeMultiplier * 65,
              )),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/UserCircle.png',
                            height: SizeConfig.imageSizeMultiplier * 7,
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1.5,
                          ),
                          TextView(
                            text: 'Login',
                            color: AppColors.textcolour,
                            size: SizeConfig.textMultiplier * 3,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: TextView(
                              text: 'Sign Up',
                              color: AppColors.primarycolor,
                              size: SizeConfig.textMultiplier * 2,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/login.png',
                        height: SizeConfig.imageSizeMultiplier * 48,
                      ),
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
                    Row(
                      children: [
                        TextView(
                          text: 'password',
                          size: SizeConfig.textMultiplier * 2,
                          color: AppColors.textcolour,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(ForgotPassword());
                          },
                          child: TextView(
                            text: 'Forgot Passward',
                            size: SizeConfig.textMultiplier * 2,
                            color: AppColors.primarycolor,
                            line: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: AuthTextInputField(
                          hintText: 'Enter password',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          isPassword: true,
                          bordercolor: AppColors.textfieldbordercolor,
                          inputType: TextInputType.number,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.primarycolor,
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ), //Checkbox
                        TextView(
                          text: 'Remember Me',
                          size: SizeConfig.textMultiplier * 1.5,
                          color: AppColors.hintcolour,
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    CustomAuthButton(
                      callback: () {
                        Get.to(HomePage());
                      },
                      colour: AppColors.primarycolor,
                      textcolour: Colors.white,
                      height: SizeConfig.heightMultiplier * 6,
                      width: SizeConfig.widthMultiplier * 95,
                      title: 'Log In',
                      fontSize: SizeConfig.textMultiplier * 2,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
