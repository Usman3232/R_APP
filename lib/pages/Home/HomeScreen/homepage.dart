import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandabar/pandabar.dart';
import 'package:r_app/pages/Home/HomeScreen/components/calender.dart';
import 'package:r_app/pages/Home/NotificationScreen/notifications.dart';
import 'package:r_app/pages/Home/ViewProfile/ViewProfile.dart';
import 'package:r_app/utils/TextView.dart';
import 'package:r_app/utils/aut_btn.dart';
import 'package:r_app/utils/auth_input_text_field.dart';
import 'package:r_app/utils/constants.dart';
import 'package:r_app/utils/size_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String page = 'Home';
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        IconButton(
          onPressed: () {
            Get.to(NotificationScreen());
          },
          icon: Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: InkWell(
            onTap: () {
              Get.to(ViewProfile());
            },
            child: CircleAvatar(
              radius: SizeConfig.heightMultiplier * 1.4,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/viewprofile.png'),
            ),
          ),
        )
      ]),
      extendBody: true,
      bottomNavigationBar: PandaBar(
        backgroundColor: Colors.white,
        buttonSelectedColor: AppColors.primarycolor,
        fabColors: [AppColors.primarycolor, AppColors.primarycolor],
        buttonData: [
          PandaBarButtonData(
            id: 'Home',
            icon: Icons.home,
            title: 'Home',
          ),
          PandaBarButtonData(
              id: 'Customers', icon: Icons.groups_outlined, title: 'Customers'),
          PandaBarButtonData(
              id: 'Sales',
              icon: Icons.stacked_line_chart_sharp,
              title: 'Sales'),
          PandaBarButtonData(id: 'More', icon: Icons.menu, title: 'More'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  content: Text('Nothing to add'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('Close'),
                      isDestructiveAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });
        },
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Customers':
              return Scaffold(
                backgroundColor: Colors.white,
                body: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextView(
                            text: 'Customers',
                            size: SizeConfig.textMultiplier * 4,
                            color: Colors.black,
                          ),
                          TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30))),
                                  context: context,
                                  builder: (context) => Container(
                                        height:
                                            SizeConfig.heightMultiplier * 80,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(30)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              defaultPadding),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              BackButton(),
                                              TextView(
                                                text: 'Add New Customers',
                                                color: AppColors.textcolour,
                                                size:
                                                    SizeConfig.textMultiplier *
                                                        3.5,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              TextView(
                                                text: 'Full Name',
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textcolour,
                                                size:
                                                    SizeConfig.textMultiplier *
                                                        1.8,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    6,
                                                child: AuthTextInputField(
                                                    hintText: 'Enter name',
                                                    hintcolor:
                                                        Color(0xffB4B4B4),
                                                    enabled: true,
                                                    radius: 8,
                                                    bordercolor: AppColors
                                                        .textfieldbordercolor,
                                                    cursorColor:
                                                        AppColors.primarycolor),
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              TextView(
                                                text: 'Email address',
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textcolour,
                                                size:
                                                    SizeConfig.textMultiplier *
                                                        1.8,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    6,
                                                child: AuthTextInputField(
                                                    hintText:
                                                        'Enter email adress',
                                                    hintcolor:
                                                        Color(0xffB4B4B4),
                                                    enabled: true,
                                                    radius: 8,
                                                    bordercolor: AppColors
                                                        .textfieldbordercolor,
                                                    cursorColor:
                                                        AppColors.primarycolor),
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              TextView(
                                                text: 'Contact No.',
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textcolour,
                                                size:
                                                    SizeConfig.textMultiplier *
                                                        1.8,
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              Container(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    5,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: AppColors
                                                          .textfieldbordercolor),
                                                ),
                                                child: Row(
                                                  children: [
                                                    TextView(
                                                      text: '+65',
                                                      size: SizeConfig
                                                              .textMultiplier *
                                                          1.8,
                                                    ),
                                                    SizedBox(
                                                      width: SizeConfig
                                                              .widthMultiplier *
                                                          2,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .arrow_drop_down_outlined)),
                                                    Expanded(
                                                      child: AuthTextInputField(
                                                        hintText: 'Enter No',
                                                        bordercolor: AppColors
                                                            .textfieldbordercolor,
                                                        cursorColor: AppColors
                                                            .primarycolor,
                                                        hintcolor: AppColors
                                                            .hintcolour,
                                                        radius: 8,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    2,
                                              ),
                                              Container(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    12,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        100,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: AppColors
                                                          .textfieldbordercolor),
                                                ),
                                                child: AuthTextInputField(
                                                    hintText:
                                                        'Type your commnet here..',
                                                    bordercolor:
                                                        Colors.transparent),
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor:
                                                        AppColors.primarycolor,
                                                    value: this.value,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        this.value = value!;
                                                      });
                                                    },
                                                  ),
                                                  SizedBox(
                                                    width: SizeConfig
                                                            .widthMultiplier *
                                                        2,
                                                  ),
                                                  TextView(
                                                    text:
                                                        'join membership programme',
                                                    fontWeight: FontWeight.w400,
                                                    size: SizeConfig
                                                            .textMultiplier *
                                                        1.5,
                                                    color: AppColors.hintcolour,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    4,
                                              ),
                                              CustomAuthButton(
                                                callback: () {},
                                                colour: AppColors.primarycolor,
                                                textcolour: Colors.white,
                                                height: SizeConfig
                                                        .heightMultiplier *
                                                    6,
                                                width:
                                                    SizeConfig.widthMultiplier *
                                                        95,
                                                title: 'Confirm',
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        2,
                                              )
                                            ],
                                          ),
                                        ),
                                      ));
                            },
                            child: TextView(
                              text: 'Add New',
                              color: AppColors.primarycolor,
                              size: SizeConfig.textMultiplier * 2,
                              line: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 6,
                        child: AuthTextInputField(
                            hintText: 'Search',
                            hintcolor: AppColors.hintcolour,
                            radius: 8,
                            suffixIcon: Icon(Icons.search),
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
                            text: '(50) results',
                            color: AppColors.textcolour,
                            size: SizeConfig.textMultiplier * 1.8,
                          ),
                          Spacer(),
                          TextView(
                            text: 'All Customers',
                            color: AppColors.textcolour,
                            size: SizeConfig.textMultiplier * 1.8,
                          ),
                          Icon(Icons.keyboard_double_arrow_down_sharp)
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextView(
                                      text: 'Adeline Tan',
                                      size: SizeConfig.textMultiplier * 2.2,
                                      color: AppColors.textcolour,
                                    ),
                                    TextView(
                                      text: 'ID 123456',
                                      size: SizeConfig.textMultiplier * 1.5,
                                      color: AppColors.hintcolour,
                                    )
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Image.asset(
                                    'assets/icons/CaretCircleRight.png',
                                    height: SizeConfig.imageSizeMultiplier * 13,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              );
            case 'Home':
              return Scaffold(
                backgroundColor: Colors.white,
                body: Calender(),
              );
            case 'Sales':
              return Scaffold();
            case 'More':
              return Scaffold();
            default:
              return Container();
          }
        },
      ),
    );
  }
}
