import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/dialog_box.dart';
import 'package:qfx_app/features/homescreen/presentation/homescreen.dart';
import 'package:qfx_app/features/myloyalty/presentation/myloyalty.dart';
import 'package:qfx_app/features/offers/presentation/offer.dart';
import 'package:qfx_app/features/profile/presentations/profile.dart';
import 'package:qfx_app/utils/widgets/popupcard.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final appScreens = [
    const Homescreen(),
    const OffersScreen(),
    const MyloyaltyScreen(),
    const ProfileScreen(),
  ];

  int _selectedItem = 0;
  // ignore: avoid_types_as_parameter_names
  void _ontappedItem(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle:
              TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 73, 72, 72),
          currentIndex: _selectedItem,
          onTap: _ontappedItem,
          unselectedItemColor: const Color.fromARGB(255, 177, 174, 174),
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_sharp),
                icon: Icon(
                  Icons.home_sharp,
                  size: 28,
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.percent),
                icon: Icon(
                  Icons.percent,
                  size: 28,
                ),
                label: "OFFERS"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.loyalty),
                icon: SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              child: DialogBox(),
                            );
                          });
                    },
                    icon: Icon(Icons.loyalty),
                  ),
                ),
                label: "MY LOYALTY"

                // icon: Icon(
                //   Icons.loyalty,
                //   size: 28,
                // ),
                ),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(
                  Icons.person,
                  size: 28,
                ),
                label: "LOGIN"),
          ]),
    );
  }
}
