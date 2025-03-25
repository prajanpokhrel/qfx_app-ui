import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/dialog_box.dart';
import 'package:qfx_app/features/homescreen/presentation/homescreen.dart';
import 'package:qfx_app/features/myloyalty/presentation/myloyalty.dart';
import 'package:qfx_app/features/offers/presentation/offer.dart';
import 'package:qfx_app/features/profile/presentations/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // final appScreens = [
  //   const Homescreen(),
  //   const OffersScreen(),
  //   const MyloyaltyScreen(),
  //   const ProfileScreen(),
  // ];

  // int _selectedItem = 0;
  // // ignore: avoid_types_as_parameter_names
  // void _ontappedItem(int index) {
  //   setState(() {
  //     _selectedItem = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 73, 72, 72),
      unselectedItemColor: const Color.fromARGB(255, 177, 174, 174),
      selectedItemColor: Colors.white,
      showSelectedLabels: true,
      items: <BottomNavigationBarItem>[
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
            label: "MY LOYALTY"),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(
              Icons.person,
              size: 28,
            ),
            label: "LOGIN"),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homescreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OffersScreen(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyloyaltyScreen(),
              ),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
            break;
        }
      },
    );
  }
}
