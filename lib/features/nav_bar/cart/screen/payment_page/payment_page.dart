import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/payment_page/confirm_payment_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Payment",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose a payment method",style: jostSemiBold.copyWith(
                fontSize: Dimensions.fontSizeTwenty)),
            SizedBox(height: 10,),
            RadioListTile(
              title: Row(
                children: [
                  Image(image: AssetImage("assets/images/SSL.png")),
                  SizedBox(width: 8,),
                  Text('SSL Payment Gateway',style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                ],
              ),
              value: 1,
              activeColor: AppColors.primaryClr,
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            Divider(),
            RadioListTile(
              title: Text('Cash on delivery',style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
              value: 2,
              activeColor: AppColors.primaryClr,
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            Divider(),
            Spacer(),
            Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmPaymentPage()));
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: AppColors.primaryClr,
                child: Text(
                  "Confirm Payment",
                  style: jostMedium.copyWith(
                      color: AppColors.white,
                      fontSize: Dimensions.fontSizeSixteen),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

