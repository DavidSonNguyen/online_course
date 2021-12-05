import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
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
              color: Color(0xff2657ce),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            productListing(
                'Momo', 'Payment via Momo wallet', 'assets/image/momo.png'),
            productListing(
                'Momo', 'Payment via Visa or Master card', 'assets/image/visa_master.png'),
          ],
        ),
      ),
    );
  }

  Widget productListing(String title, String info, String image) {
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
              child: Image.asset(
                image,
                height: 40.0,
                width: 40.0,
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
