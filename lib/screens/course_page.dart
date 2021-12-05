import 'package:flutter/material.dart';
import 'package:onlinelearning/res/colors.dart';
import 'package:onlinelearning/routers.dart';

class CourseScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  String chosenImg;
  String chosenTitle;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    chosenImg = arguments['img'];
    chosenTitle = arguments['title'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
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
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Text(
                    '$chosenTitle',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 27,
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routers.paymentScreen);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Text(
                        'Payment',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Sarah Parknson',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: AppColors.kPrimaryLightColor,
              ),
              child: Hero(
                tag: chosenImg,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(chosenImg),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Course',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffd3defa),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 35,
                        child: IconButton(
                          icon: Icon(
                            Icons.timer,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        "3 Hours, 20 Min",
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    productListing(
                        'Introduction', 'Introduction of the course', 'active'),
                    productListing('Language of Color',
                        'Learn about the language of..', 'inactive'),
                    productListing('Psychology of Color',
                        'Learn about the psychology of..', 'inactive'),
                    productListing('Language of Color',
                        'Learn about the language of..', 'inactive')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column productListing(String title, String info, String activeOrInactive) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: (activeOrInactive == 'active')
                    ? AppColors.kPrimaryColor
                    : Color(0xffd3defa),
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: (activeOrInactive == 'active')
                      ? Colors.white
                      : AppColors.kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '$info',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
