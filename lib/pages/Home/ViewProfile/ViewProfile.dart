import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Home/AppointmentDetails/AppointmentDetail.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: SizeConfig.heightMultiplier * 5,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/images/viewprofile.png'),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Center(
              child: TextView(
                text: 'Flower Pte. Ltd.',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 3.2,
              ),
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
            TextView(
              text: 'Outlet',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'Novena Square 2',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Outlet Address',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: "Novena Square 2, 10 Sinaran Dr,'Islamabad-102 near Lhr",
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Operating Hours',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'Tue - Sun, 10 AM to 9 PM',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Email Address',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'hello@flower.com',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Contact No.',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: '+65 9182 8029',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'GST Info',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.9,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                TextView(
                  text: 'Services',
                  fontWeight: FontWeight.w600,
                  color: AppColors.textcolour,
                  size: SizeConfig.textMultiplier * 1.9,
                ),
                Spacer(),
                TextView(
                  text: '7%',
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolour,
                  size: SizeConfig.textMultiplier * 1.9,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                TextView(
                  text: 'Products',
                  fontWeight: FontWeight.w600,
                  color: AppColors.textcolour,
                  size: SizeConfig.textMultiplier * 1.9,
                ),
                Spacer(),
                TextView(
                  text: '7%',
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolour,
                  size: SizeConfig.textMultiplier * 1.9,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3.1,
            ),
            CustomAuthButton(
              callback: () {Get.to(AppointmentDetail());},
              colour: AppColors.primarycolor,
              textcolour: Colors.white,
              height: SizeConfig.heightMultiplier * 7,
              width: SizeConfig.widthMultiplier * 95,
              title: 'Edit Profile',
              fontSize: SizeConfig.textMultiplier * 2,
            ),
          ],
        ),
      ),
    );
  }
}
