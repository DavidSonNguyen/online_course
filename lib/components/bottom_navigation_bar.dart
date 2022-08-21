import 'package:flutter/material.dart';
import 'package:onlinelearning/res/colors.dart';

class MainNavigationBar extends StatefulWidget {
  final Function(int index)? onItemTap;

  const MainNavigationBar({Key? key, this.onItemTap}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainNavigationBarState();
  }
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.kPrimaryColor.withOpacity(0.5),
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 0.0,
      unselectedFontSize: 0.0,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
        widget.onItemTap?.call(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions,
            size: 28,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.camera_alt,
            size: 28,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.description,
            size: 28,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 28,
          ),
          label: '',
        ),
      ],
    );
  }
}
