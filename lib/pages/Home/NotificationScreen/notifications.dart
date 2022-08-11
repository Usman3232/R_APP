import 'package:flutter/material.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Notifications',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 3.5,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              TextView(
                text: 'Title Goes Here',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text: '2h ago',
                color: Color(0xffB4B4B4),
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextButton(
                onPressed: () {},
                child: TextView(
                  text: 'Action Button',
                  color: AppColors.primarycolor,
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              Divider(thickness: 1),
              TextView(
                text: 'Title Goes Here',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text: '2h ago',
                color: Color(0xffB4B4B4),
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: TextView(
                      text: 'Action Button',
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.8,
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: TextView(
                      text: 'Action Button',
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.8,
                    ),
                  ),
                ],
              ),
              Divider(thickness: 1),
              TextView(
                text: 'Title Goes Here',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text: '2h ago',
                color: Color(0xffB4B4B4),
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextButton(
                onPressed: () {},
                child: TextView(
                  text: 'Action Button',
                  color: AppColors.primarycolor,
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              Divider(thickness: 1),
              TextView(
                text: 'Title Goes Here',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text: '2h ago',
                color: Color(0xffB4B4B4),
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 1.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextButton(
                onPressed: () {},
                child: TextView(
                  text: 'Action Button',
                  color: AppColors.primarycolor,
                  fontWeight: FontWeight.w600,
                  size: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              Divider(thickness: 1),
            ],
          ),
        ),
      ),
    );
  }
}
