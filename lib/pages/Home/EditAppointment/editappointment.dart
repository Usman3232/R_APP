import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Home/AppointmentDetails/AppointmentDetail.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class EditAppointment extends StatefulWidget {
  const EditAppointment({Key? key}) : super(key: key);

  @override
  State<EditAppointment> createState() => _EditAppointmentState();
}

class _EditAppointmentState extends State<EditAppointment> {
  bool value = false;
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
                text: 'Edit Ava Loh’s          Appointment',
                color: AppColors.textcolour,
                fontWeight: FontWeight.w700,
                size: SizeConfig.textMultiplier * 3.2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              TextView(
                text: 'Appointment Date',
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
                    hintText: '12 Jun 2022',
                    hintcolor: AppColors.textcolour,
                    enabled: true,
                    fillColor: Color(0xffF8FAFF),
                    radius: 8,
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color: AppColors.textcolour,
                    ),
                    bordercolor: Colors.transparent,
                    cursorColor: AppColors.primarycolor),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              TextView(
                text: 'Appointment Tme',
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
                    hintText: '2:00 PM',
                    hintcolor: AppColors.textcolour,
                    enabled: true,
                    fillColor: Color(0xffF8FAFF),
                    radius: 8,
                    suffixIcon: Icon(
                      Icons.timer,
                      color: AppColors.textcolour,
                    ),
                    bordercolor: Colors.transparent,
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
                  ),
                  TextView(
                    text: 'Send reminder a day before appointment.',
                    size: SizeConfig.textMultiplier * 1.5,
                    color: AppColors.hintcolour,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Send Reminder By',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Row(
                children: [
                  TextView(
                    text: 'SMS',
                    size: SizeConfig.textMultiplier * 1.5,
                    color: AppColors.hintcolour,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 5,
                  ),
                  TextView(
                    text: 'Email',
                    size: SizeConfig.textMultiplier * 1.5,
                    color: AppColors.hintcolour,
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              TextView(
                text: 'Reminder Message',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.textfieldbordercolor)),
                child: AuthTextInputField(
                    hintText: 'Type Your reminder here......',
                    hintcolor: AppColors.textcolour,
                    bordercolor: Colors.transparent,
                    cursorColor: AppColors.primarycolor),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              TextView(
                text: 'Services',
                size: SizeConfig.textMultiplier * 2,
                color: AppColors.textcolour,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
                child: AuthTextInputField(
                    hintText: 'Package XYZ',
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
                    text: 'Assign to',
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
                    hintText: 'Jason Yeo',
                    hintcolor: AppColors.hintcolour,
                    radius: 8,
                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                    bordercolor: AppColors.textfieldbordercolor,
                    cursorColor: AppColors.primarycolor),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              TextView(
                text: 'Comment (Only you can see this)',
                fontWeight: FontWeight.w700,
                color: AppColors.textcolour,
                size: SizeConfig.textMultiplier * 1.9,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.textfieldbordercolor)),
                child: AuthTextInputField(
                    hintText: 'Type Your Comment here......',
                    hintcolor: AppColors.textcolour,
                    bordercolor: Colors.transparent,
                    cursorColor: AppColors.primarycolor),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              CustomAuthButton(
                callback: () {
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/Explosion.png',
                                    height: SizeConfig.heightMultiplier * 45,
                                  ),
                                  TextView(
                                    text: 'Oops! Failed to update',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textcolour,
                                    size: SizeConfig.textMultiplier * 3.5,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  SizedBox(
                                    height: SizeConfig.heightMultiplier * 2,
                                  ),
                                  CustomAuthButton(
                                    callback: () {
                                      Get.to(AppointmentDetail());
                                    },
                                    colour: AppColors.primarycolor,
                                    textcolour: Colors.white,
                                    height: SizeConfig.heightMultiplier * 7,
                                    width: SizeConfig.widthMultiplier * 95,
                                    title: 'Try Again',
                                    fontSize: SizeConfig.textMultiplier * 2,
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                colour: AppColors.primarycolor,
                textcolour: Colors.white,
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 95,
                title: 'Save Changes',
                fontSize: SizeConfig.textMultiplier * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
