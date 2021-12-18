import 'package:flutter/material.dart';
import 'package:onlinelearning/components/main_app_bar.dart';
import 'package:onlinelearning/res/app_assets.dart';
import 'package:onlinelearning/models/payment_method.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final paymentMethods = [
    PaymentMethod.create('Momo', 'Payment via Momo wallet', AppAssets.momo),
    PaymentMethod.create('Visa/Master', 'Payment via Visa or Master card',
        AppAssets.visa_master),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            MainAppBar(),
            ListView.separated(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final payment = paymentMethods[index];
                return buildPaymentMehod(
                  payment.title,
                  payment.info,
                  payment.image,
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: double.maxFinite,
                  height: 0.5,
                  color: Colors.grey,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPaymentMehod(String title, String info, String image) {
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
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
