import 'package:flutter/material.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';

class CourseWidget extends StatefulWidget {
  static final maxWidth = 200.0;

  final String category;
  final String title;
  final String img;
  final Color? categoryColor;
  final Color? bgColor;
  final Function()? onTap;

  const CourseWidget({
    Key? key,
    required this.category,
    required this.title,
    required this.img,
    this.categoryColor,
    this.bgColor,
    this.onTap,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CourseWidgetState();
  }
}

class _CourseWidgetState extends State<CourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          widget.onTap?.call();
          openCoursePage('${widget.img}', '${widget.title}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: widget.categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '${widget.category}',
                style: TextStyle(
                    color: (widget.categoryColor == Color(0xffe9eefa)
                        ? Color(0xff2657ce)
                        : Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${widget.title}',
              style: TextStyle(
                color: (widget.bgColor == AppColors.kPrimaryLightColor)
                    ? Colors.white
                    : Colors.black,
                fontSize: 20,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: (widget.bgColor == AppColors.kPrimaryLightColor)
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (widget.bgColor == AppColors.kPrimaryLightColor)
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(widget.img),
              )),
            )
          ],
        ),
      ),
    );
  }

  void openCoursePage(String img, String title) {
    Navigator.pushNamed(context, Routers.courseScreen,
        arguments: {'img': '$img', 'title': '$title'});
  }
}
