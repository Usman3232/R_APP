import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Authentication/login/login.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

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
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/Keyhole.png'),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 1.5,
                          ),
                          TextView(
                            text: 'Forgot Password',
                            color: Color(0xff5B6974),
                            size: SizeConfig.textMultiplier * 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/forgot.png',
                        height: SizeConfig.imageSizeMultiplier * 50,
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
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    CustomAuthButton(
                      callback: () {},
                      colour: AppColors.primarycolor,
                      textcolour: Colors.white,
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 95,
                      title: 'Request Reset Link',
                      fontSize: SizeConfig.textMultiplier * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(Login());
                        },
                        child: TextView(
                          text: 'Back to Log In',
                          size: SizeConfig.textMultiplier * 2,
                          color: AppColors.primarycolor,
                        ),
                      ),
                    ),
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
