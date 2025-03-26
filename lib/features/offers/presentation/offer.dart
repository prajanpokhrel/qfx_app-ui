import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qfx_app/features/offers/widgets/offer_card.dart';
import 'package:qfx_app/utils/widgets/drawer/drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.h),
        child: SafeArea(
          child: Container(
            color: const Color.fromARGB(255, 63, 61, 61),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.h, top: 1.h),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 14.w,
                    height: 6.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                        ),
                        const Spacer(),
                        const Text(
                          "OFFERS",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () =>
                              scaffoldKey.currentState?.openEndDrawer(),
                          icon: const Icon(Icons.menu, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: DrawerWidgets(),
      body: OfferCards(),
    );
  }
}
