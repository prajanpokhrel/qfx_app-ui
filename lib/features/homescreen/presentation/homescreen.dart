import 'package:flutter/material.dart';
import 'package:qfx_app/features/homescreen/search/presentation/search.dart';
import 'package:qfx_app/features/tabs/coming_soon.dart';
import 'package:qfx_app/features/tabs/now_showing.dart';
import 'package:qfx_app/utils/widgets/bottombar/bottombar.dart';
import 'package:qfx_app/utils/widgets/carsoule/carsoule.dart';
import 'package:qfx_app/utils/widgets/drawer/drawer_details.dart';
import 'package:qfx_app/utils/dropdown.dart';
import 'package:qfx_app/utils/widgets/popupcard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scaffoldKey, // Assign the key to access scaffold functions
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 61, 61),
          toolbarHeight: 70, // Increases AppBar height
          leadingWidth: 100,
          leading: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Image(
              width: 9.w,
              height: 8.h,
              fit: BoxFit.contain,
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          title: Container(
            child: DropdownMenuExample(),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SearchScreen(title: 'Movies'),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0); // Slide from right
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration:
                          Duration(milliseconds: 600), // Animation duration
                    ),
                  );
                },
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
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
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/black.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Carousel(),
              TabBar(
                unselectedLabelColor: Colors.white60,
                // isScrollable: true,
                indicatorColor: const Color.fromARGB(255, 75, 74, 74),
                labelColor: const Color.fromARGB(204, 16, 180, 245),
                tabs: [
                  Tab(
                    child: Text(
                      "NOW SHOWING",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "COMING SOON",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                child: Popupcard(),
                              );
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(204, 56, 191, 245),
                        ),
                        height: 4.h,
                        width: 80.w,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Icon(size: 12, Icons.electric_bolt_sharp),
                            // SizedBox(
                            //   width: 1,
                            // ),
                            Text(
                              "QUICK BUY",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w800),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  NowShowing(
                    wholeScreen: false,
                  ),
                  ComingSoon(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
