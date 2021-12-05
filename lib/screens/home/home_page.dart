import 'package:flutter/material.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
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
          SizedBox(
            height: 25,
          ),
          Text(
            'What do you \nwant to \nlearn today?',
            style: TextStyle(
                fontSize: 35, height: 1.3, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        courseWidget(
                          'Multimedia',
                          'Animation Course',
                          AppAssets.img1,
                          Color(0xffff6a65),
                          AppColors.kPrimaryLightColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        courseWidget('Social Media', 'Social Media Monitoring',
                            AppAssets.img2, Color(0xffe9eefa), Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        courseWidget('Programming', 'Python for everybody',
                            AppAssets.img3, Color(0xffe9eefa), Colors.white),
                        SizedBox(
                          height: 20,
                        ),
                        courseWidget(
                            'Graphic Design',
                            'Fundamentals of Design',
                            AppAssets.img4,
                            Color(0xffbdcddfa),
                            Color(0xffcedaff)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          openCoursePage('$img', '$title');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$category',
                style: TextStyle(
                    color: (categoryColor == Color(0xffe9eefa)
                        ? Color(0xff2657ce)
                        : Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$title',
              style: TextStyle(
                color: (bgColor == AppColors.kPrimaryLightColor)
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
                  color: (bgColor == AppColors.kPrimaryLightColor)
                      ? Colors.red
                      : Color(0xff2657ce),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    color: (bgColor == AppColors.kPrimaryLightColor)
                        ? Colors.white.withOpacity(0.5)
                        : Color(0xff2657ce).withOpacity(0.5),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: img,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(img),
                )),
              ),
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
