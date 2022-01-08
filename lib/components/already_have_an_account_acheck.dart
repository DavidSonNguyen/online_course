import 'package:flutter/material.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/colors.dart';

class OtherOptionAuthenWidget extends StatelessWidget {
  final String content;
  final String action;
  final Function press;

  OtherOptionAuthenWidget({
    Key key,
    this.press,
    this.content,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          content,
          style: TextStyle(color: AppColors.kPrimaryColor),
        ),
        SizedBox(width: 5.0),
        GestureDetector(
          onTap: press,
          child: Text(
            action,
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
