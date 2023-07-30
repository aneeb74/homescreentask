import 'package:flutter/material.dart';
import 'package:homescreentask/Constant.dart';
class BottomBar extends StatefulWidget {
   BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return   BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {

        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.home,color: PColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.white,

          icon: Icon(
            Icons.message,color: Colors.grey,
          ),
          label: 'Message',
        ),

        BottomNavigationBarItem(
          backgroundColor:Colors.white,

          icon: Icon(
            Icons.person,color: Colors.grey,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          backgroundColor:Colors.white,

          icon: Icon(
            Icons.lock_outline,color: Colors.grey,
          ),
          label: 'Profile',
        ),
      ],);
  }
}
