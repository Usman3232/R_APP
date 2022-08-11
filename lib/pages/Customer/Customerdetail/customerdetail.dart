import 'package:flutter/material.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class Customerdetail extends StatefulWidget {
  const Customerdetail({Key? key}) : super(key: key);

  @override
  State<Customerdetail> createState() => _CustomerdetailState();
}

class _CustomerdetailState extends State<Customerdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(color: AppColors.textcolour),
          actions: [
            IconButton(
              onPressed: () {
                // PopupMenuButton
              },
              icon: Icon(
                Icons.more_vert_rounded,
                color: AppColors.textcolour,
              ),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              text: 'Ava Loh',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 3.5,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Customer ID',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'S129040 G',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
              text: 'Customer Type',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'Member',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
              text: 'Membership Tier',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'Platinum',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
              text: 'Email Address',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: 'Avaloh@gmail.com',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
              text: 'Contact No.',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text: '+65 9182 8029',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            TextView(
              text: 'Comment (Only you can see this)',
              fontWeight: FontWeight.w700,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            TextView(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              fontWeight: FontWeight.w400,
              color: AppColors.textcolour,
              size: SizeConfig.textMultiplier * 1.8,
            ),
          ],
        ),
      ),
    );
  }
}
