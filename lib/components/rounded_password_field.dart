import 'package:flutter/material.dart';
import 'package:onlinelearning/components/text_field_container.dart';
import 'package:onlinelearning/generated/l10n.dart';
import 'package:onlinelearning/res/colors.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
          hintText: S.of(context).password,
          icon: Icon(
            Icons.lock,
            color: AppColors.kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
