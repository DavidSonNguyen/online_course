import 'package:flutter/material.dart';
import 'package:onlinelearning/components/course_widget.dart';
import 'package:onlinelearning/components/slivers.dart';
import 'package:onlinelearning/models/course_model.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/res/colors.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final courseList = [
    CourseModel.create(
      'Multimedia',
      'Animation Course',
      AppAssets.img1,
    ),
    CourseModel.create(
      'Social Media',
      'Social Media Monitoring',
      AppAssets.img2,
    ),
    CourseModel.create(
      'Programming',
      'Python for everybody',
      AppAssets.img3,
    ),
    CourseModel.create(
      'Graphic Design',
      'Fundamentals of Design',
      AppAssets.img4,
    ),
    CourseModel.create(
      'Multimedia',
      'Animation Course',
      AppAssets.img1,
    ),
    CourseModel.create(
      'Social Media',
      'Social Media Monitoring',
      AppAssets.img2,
    ),
    CourseModel.create(
      'Programming',
      'Python for everybody',
      AppAssets.img3,
    ),
    CourseModel.create(
      'Graphic Design',
      'Fundamentals of Design',
      AppAssets.img4,
    ),
    CourseModel.create(
      'Multimedia',
      'Animation Course',
      AppAssets.img1,
    ),
    CourseModel.create(
      'Social Media',
      'Social Media Monitoring',
      AppAssets.img2,
    ),
    CourseModel.create(
      'Programming',
      'Python for everybody',
      AppAssets.img3,
    ),
    CourseModel.create(
      'Graphic Design',
      'Fundamentals of Design',
      AppAssets.img4,
    ),
    CourseModel.create(
      'Multimedia',
      'Animation Course',
      AppAssets.img1,
    ),
    CourseModel.create(
      'Social Media',
      'Social Media Monitoring',
      AppAssets.img2,
    ),
    CourseModel.create(
      'Programming',
      'Python for everybody',
      AppAssets.img3,
    ),
    CourseModel.create(
      'Graphic Design',
      'Fundamentals of Design',
      AppAssets.img4,
    ),
    CourseModel.create(
      'Multimedia',
      'Animation Course',
      AppAssets.img1,
    ),
    CourseModel.create(
      'Social Media',
      'Social Media Monitoring',
      AppAssets.img2,
    ),
    CourseModel.create(
      'Programming',
      'Python for everybody',
      AppAssets.img3,
    ),
    CourseModel.create(
      'Graphic Design',
      'Fundamentals of Design',
      AppAssets.img4,
    )
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraint) {
      final count = ((size.width -
                  50.0 -
                  (constraint.maxWidth < size.width
                      ? size.width * 0.15
                      : 0.0)) /
              (CourseWidget.maxWidth + 10.0))
          .round();
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: CustomScrollView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverSingle.empty(height: 20.0),
            SliverSingle(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Hello Developers",
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/image/profilePic.png'))),
                  )
                ],
              ),
            ),
            SliverSingle.empty(height: 25.0),
            SliverSingle(
              child: Text(
                'What do you \nwant to \nlearn today?',
                style: TextStyle(
                    fontSize: 35, height: 1.3, fontWeight: FontWeight.w700),
              ),
            ),
            SliverSingle.empty(height: 10.0),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final course = courseList[index];
                  return CourseWidget(
                    category: course.category,
                    img: course.img,
                    title: course.title,
                    categoryColor: getCategoryColor(index),
                    bgColor: getBackgroundColor(index),
                  );
                },
                childCount: courseList.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: count,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: calcChidlAspectRatio(
                  size,
                  count,
                  constraint.maxWidth,
                ),
              ),
            ),
            SliverSingle.empty(height: 30.0),
          ],
        ),
      );
    });
  }

  double calcChidlAspectRatio(Size size, int columCount, double parentWidth) {
    return ((size.width -
                60.0 -
                (parentWidth < size.width ? size.width * 0.15 : 0.0) -
                10.0 * (columCount - 1)) /
            columCount) /
        (CourseWidget.maxWidth / 0.78);
  }

  Color getCategoryColor(int index) {
    switch (index % 4) {
      case 0:
        return Color(0xffff6a65);
      case 1:
        return Color(0xffe9eefa);
      case 2:
        return Color(0xffe9eefa);
      case 3:
        return Color(0xffbdcddfa);
      default:
        return Color(0xffbdcddfa);
    }
  }

  Color getBackgroundColor(int index) {
    switch (index % 4) {
      case 0:
        return AppColors.kPrimaryLightColor;
      case 1:
        return Colors.white;
      case 2:
        return Colors.white;
      case 3:
        return Color(0xffcedaff);
      default:
        return Color(0xffcedaff);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
