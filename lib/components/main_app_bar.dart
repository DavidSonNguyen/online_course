import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinelearning/res/colors.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? SizedBox.shrink()
        : Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xffe1eaff),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ),
            ],
          );
  }
}
