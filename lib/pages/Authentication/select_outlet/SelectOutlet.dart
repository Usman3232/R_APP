import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Authentication/onboarding/onboardingone.dart';
import 'package:r_app/pages/Authentication/select_outlet/components/select_outlet_textfields.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class SelectOutlet extends StatelessWidget {
  const SelectOutlet({Key? key}) : super(key: key);

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/UserCircle.png'),
                          TextView(
                            text: 'Select Outlet',
                            color: Color(0xff5B6974),
                            size: SizeConfig.textMultiplier * 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: SelectOutletFields(
                          hintText: 'Novena Square 2',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          suffixIcon: 'assets/icons/CaretCircleRight.png',
                          bordercolor: AppColors.textfieldbordercolor,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: SelectOutletFields(
                          hintText: 'Orchard ION',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          suffixIcon: 'assets/icons/CaretCircleRight.png',
                          bordercolor: AppColors.textfieldbordercolor,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: SelectOutletFields(
                          hintText: 'Bishan Junction 8',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          suffixIcon: 'assets/icons/CaretCircleRight.png',
                          bordercolor: AppColors.textfieldbordercolor,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: SelectOutletFields(
                          hintText: 'North Point',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          suffixIcon: 'assets/icons/CaretCircleRight.png',
                          bordercolor: AppColors.textfieldbordercolor,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: SelectOutletFields(
                          hintText: 'City Square Mall',
                          hintcolor: AppColors.hintcolour,
                          radius: 8,
                          suffixIcon: 'assets/icons/CaretCircleRight.png',
                          bordercolor: AppColors.textfieldbordercolor,
                          cursorColor: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5,
                    ),
                    CustomAuthButton(
                      callback: () {
                        Get.to(OnbardingOne());
                      },
                      colour: AppColors.primarycolor,
                      textcolour: Colors.white,
                      height: SizeConfig.heightMultiplier * 6,
                      width: SizeConfig.widthMultiplier * 95,
                      title: 'Next',
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
