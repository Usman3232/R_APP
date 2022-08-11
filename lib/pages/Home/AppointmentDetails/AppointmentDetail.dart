import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Home/EditAppointment/editappointment.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class AppointmentDetail extends StatelessWidget {
  const AppointmentDetail({Key? key}) : super(key: key);

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
                text: 'Paulee Tans Appointment Details',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 3.2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 10,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                    color: Color(0xffF8FAFF),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/CalendarBlank.png'),
                        TextView(
                          text: '29 Mar 2022',
                          color: AppColors.textcolour,
                        ),
                      ],
                    ),
                    Container(
                      color: AppColors.textcolour,
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 0.2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/Clock.png'),
                        TextView(
                          text: '10:30 AM',
                          color: AppColors.textcolour,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              TextView(
                text: 'Services',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.8,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
                child: AuthTextInputField(
                    hintText: 'Package XYZ',
                    hintcolor: AppColors.textcolour,
                    enabled: true,
                    fillColor: Color(0xffF8FAFF),
                    radius: 8,
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    bordercolor: Colors.transparent,
                    cursorColor: AppColors.primarycolor),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    TextView(
                      text: 'Hair Cut',
                      fontWeight: FontWeight.w400,
                      color: AppColors.textcolour,
                      size: SizeConfig.textMultiplier * 1.9,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1,
                    ),
                    TextView(
                      text: 'Hair Dye',
                      fontWeight: FontWeight.w400,
                      color: AppColors.textcolour,
                      size: SizeConfig.textMultiplier * 1.9,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Total Price',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text: '\$250',
                fontWeight: FontWeight.w400,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Customer ID',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text: 'S129040 G',
                fontWeight: FontWeight.w400,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Customer Type',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text: 'Non-Member',
                fontWeight: FontWeight.w400,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
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
                text: 'pauleetan@gmail.com',
                fontWeight: FontWeight.w400,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
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
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Assigned to',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              Row(
                children: [
                  TextView(
                    text: 'Jason Yeo',
                    fontWeight: FontWeight.w400,
                    color: AppColors.textcolour,
                    size: SizeConfig.textMultiplier * 1.9,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      context: context,
                      builder: (_) => Container(
                            height: SizeConfig.heightMultiplier * 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BackButton(),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  TextView(
                                    text: 'Replace with...',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textcolour,
                                    size: SizeConfig.textMultiplier * 3,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  TextView(
                                    text: 'Staff',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textcolour,
                                    size: SizeConfig.textMultiplier * 1.8,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 6,
                                    child: AuthTextInputField(
                                        hintText: 'Search',
                                        hintcolor: Color(0xffB4B4B4),
                                        enabled: true,
                                        radius: 8,
                                        suffixIcon: Icon(
                                          Icons.search_outlined,
                                          color: Colors.black,
                                        ),
                                        bordercolor:
                                            AppColors.textfieldbordercolor,
                                        cursorColor: AppColors.primarycolor),
                                  ),
                                  Spacer(),
                                  CustomAuthButton(
                                    callback: () {
                                      Get.back();
                                    },
                                    colour: AppColors.primarycolor,
                                    textcolour: Colors.white,
                                    height: SizeConfig.heightMultiplier * 7,
                                    width: SizeConfig.widthMultiplier * 95,
                                    title: 'Confirm replacement',
                                    fontSize: SizeConfig.textMultiplier * 2,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 4,
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                    child: TextView(
                      text: 'Replace',
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w600,
                      size: SizeConfig.textMultiplier * 1.8,
                    ),
                  ),
                ],
              ),
              TextView(
                text: 'Comment (Only you can see this)',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              TextView(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                fontWeight: FontWeight.w400,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              CustomAuthButton(
                callback: () {
                  Get.to(EditAppointment());
                },
                colour: AppColors.primarycolor,
                textcolour: Colors.white,
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 95,
                title: 'Edit Appointment',
                fontSize: SizeConfig.textMultiplier * 2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        context: context,
                        builder: (_) => Container(
                              height: SizeConfig.heightMultiplier * 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(defaultPadding),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/thinkingcancelappointment.png',
                                      height: SizeConfig.heightMultiplier * 45,
                                    ),
                                    TextView(
                                      text: 'Cancel Appointment',
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textcolour,
                                      size: SizeConfig.textMultiplier * 3.5,
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 2,
                                    ),
                                    TextView(
                                      text:
                                          'You are about to cancel an appointment with paulee Tan. Are you sure? ',
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textcolour,
                                      size: SizeConfig.textMultiplier * 1.8,
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 2,
                                    ),
                                    CustomAuthButton(
                                      callback: () {
                                        Get.back();
                                      },
                                      colour: AppColors.primarycolor,
                                      textcolour: Colors.white,
                                      height: SizeConfig.heightMultiplier * 7,
                                      width: SizeConfig.widthMultiplier * 95,
                                      title: 'Yes, I’m sure',
                                      fontSize: SizeConfig.textMultiplier * 2,
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 2,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: TextView(
                                        text: 'No, I’ve changed my mind',
                                        color: AppColors.primarycolor,
                                        fontWeight: FontWeight.w600,
                                        size: SizeConfig.textMultiplier * 1.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: TextView(
                    text: 'Cancel Appointment',
                    color: AppColors.primarycolor,
                    fontWeight: FontWeight.w600,
                    size: SizeConfig.textMultiplier * 1.8,
                    line: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
