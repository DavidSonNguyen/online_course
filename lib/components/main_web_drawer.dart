import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/res/colors.dart';

class MainWebDrawer extends StatefulWidget {
  final Function(int index) onItemTap;

  const MainWebDrawer({Key key, this.onItemTap}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainWebDrawerState();
  }
}

class _MainWebDrawerState extends State<MainWebDrawer> {
  bool showDrawer = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: showDrawer ? MediaQuery.of(context).size.width * 0.12 : 50.0,
      height: double.maxFinite,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SizedBox.shrink()),
              IconButton(
                iconSize: 50.0,
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    showDrawer = !showDrawer;
                  });
                },
                icon: Icon(
                  showDrawer ? Icons.chevron_left : Icons.chevron_right,
                  color: AppColors.kPrimaryColor,
                ),
              )
            ],
          ),
          buildItem(0, 'Home', Icons.subscriptions),
          buildItem(1, 'Live stream', Icons.camera_alt),
          buildItem(2, 'Documents', Icons.description),
          buildItem(3, 'Setting', Icons.settings),
        ],
      ),
    );
  }

  Widget buildItem(int selectedIndex, String title, IconData icon) {
    return InkWell(
      onTap: () {
        widget.onItemTap?.call(selectedIndex);
        setState(() {
          currentIndex = selectedIndex;
        });
      },
      child: Row(
        children: [
          IgnorePointer(
            ignoring: true,
            child: IconButton(
              iconSize: 50.0,
              padding: EdgeInsets.zero,
              icon: Icon(
                icon,
                size: 28,
                color: currentIndex == selectedIndex
                    ? AppColors.kPrimaryColor
                    : AppColors.kPrimaryColor.withOpacity(0.5),
              ),
              onPressed: () {},
            ),
          ),
          if (showDrawer)
            Text(
              title,
              style: TextStyle(
                color: currentIndex == selectedIndex
                    ? AppColors.kPrimaryColor
                    : AppColors.kPrimaryColor.withOpacity(0.5),
              ),
            ),
        ],
      ),
    );
  }
}
