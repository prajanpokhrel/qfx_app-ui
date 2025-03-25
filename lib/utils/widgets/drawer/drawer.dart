import 'package:flutter/material.dart';
import 'package:qfx_app/utils/widgets/drawer/drawer_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.h, top: 4.h),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: const Color.fromARGB(255, 161, 159, 159),
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              maxRadius: 40,
              backgroundImage: AssetImage('assets/images/logo2.jpg'),
            ),
            SizedBox(
              height: 2.h,
            ),
            DrawerFeatures(
              text: "SIGNIN /SIGNUP",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "CUSTOMER SERVICES",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "CLUB QFX",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "ADERTIVES WITH US",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "BECOME QFX FRANCHIEE",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "CAREERS",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "ABOUT US",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "FAQS",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "TERM AND PRIVACY",
              ontap: () {},
            ),
            DrawerFeatures(
              text: "PRIVACY POLICY",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
