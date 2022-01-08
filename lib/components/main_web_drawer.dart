import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/colors.dart';

class MainWebDrawer extends StatefulWidget {
  final Function(int index) onItemTap;

  const MainWebDrawer({Key key, this.onItemTap}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainWebDrawerState();
  }
}

class _MainWebDrawerState extends State<MainWebDrawer>
    with TickerProviderStateMixin {
  bool showDrawer = false;
  int currentIndex = 0;
  AnimationController _animationController;

  S s;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      upperBound: 1.0,
      lowerBound: 0.0,
    );

    _animationController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    s = S.of(context);
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.diagonal3Values(
              1.0,
              1.0,
              1.0,
            ),
            transformHitTests: false,
            child: Container(
              width: (_animationController.value *
                      (MediaQuery.of(context).size.width * 0.12)) +
                  60.0,
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
                          if (_animationController.isCompleted) {
                            _animationController.reverse();
                          } else {
                            _animationController.forward();
                          }
                        },
                        icon: Icon(
                          _animationController.value > 0.5
                              ? Icons.chevron_left
                              : Icons.chevron_right,
                          color: AppColors.kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  buildItem(0, s.home, Icons.subscriptions),
                  buildItem(1, s.live_stream, Icons.camera_alt),
                  buildItem(2, s.documents, Icons.description),
                  buildItem(3, s.settings, Icons.settings),
                ],
              ),
            ),
            alignment: Alignment.centerLeft,
          );
        });
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
              iconSize: 60.0,
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
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              style: TextStyle(
                color: currentIndex == selectedIndex
                    ? AppColors.kPrimaryColor
                    : AppColors.kPrimaryColor.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
