import 'package:flutter/material.dart';
import 'package:qfx_app/features/homescreen/presentation/homescreen.dart';
import 'package:qfx_app/utils/widgets/drawer/drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 61, 61),
          elevation: 0, // Remove shadow for a flat appearance
          leading: Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Image.asset("assets/images/logo.png")),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "OFFERS",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openEndDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ))
                  ],
                )),
          ),
        ),
      ),
      endDrawer: DrawerWidgets(),
      body: Column(
        children: [],
      ),
    );
  }
}
