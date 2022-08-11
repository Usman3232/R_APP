import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:r_app/pages/Customer/Customerdetail/customerdetail.dart';
import 'pages/Authentication/login/login.dart';
import 'pages/Authentication/splash/splash.dart';
import 'utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              theme: ThemeData(scaffoldBackgroundColor: Color(0xffE5E5E5)),
              debugShowCheckedModeBanner: false,
              home: Splash(),
              // home: Customerdetail(),

              // home: Login(),
              // home: SelectOutlet(),
              // home: SignUp(),
              // home: NotificationScreen(),
              // home: ViewProfile(),
              // home: AppointmentDetail(),
              // home: OnbardingOne(),
              // home: OnboardingTwo(),
            );
          },
        );
      },
    );
  }
}
