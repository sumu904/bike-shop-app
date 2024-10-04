import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/utils/colors.dart';
import 'package:two_wheelers_bd/utils/dimensions.dart';
import 'package:two_wheelers_bd/utils/styles.dart';

class ConfirmPaymentPage extends StatefulWidget {
  const ConfirmPaymentPage({super.key});

  @override
  State<ConfirmPaymentPage> createState() => _ConfirmPaymentPageState();
}

class _ConfirmPaymentPageState extends State<ConfirmPaymentPage> {
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
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15,right: 15,top: 40,bottom: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.grey2.withOpacity(0.3)
              ),
              child: Column(
                children: [
                  Image(image: AssetImage("assets/images/done.png")),
                  SizedBox(height: 20,),
                  Text("Your order has been Placed",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                  SizedBox(height: 8,),
                  Text("Thank you for ordering from Two Wheelers BD.",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20,right: 20,top: 35,bottom: 35),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.grey2.withOpacity(0.3)
              ),
              child: Column(
                children: [
                 Row(
                   children: [
                     Text("Order ID",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                     Padding(
                       padding: EdgeInsets.only(left: 20),
                       child: Text(": #VXD695697863420",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                     ),
                   ],
                 ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text("Name",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      Padding(
                        padding: EdgeInsets.only(left: 42),
                        child: Text(": Anika Tabasum",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text("Phone No",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(": 0123456789",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Text("Email",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(": xyz@gmail.com",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                      SizedBox(width: 24,),
                      Expanded(child: Text(": Mohaimid medical center, Madani Ave, Dhaka 1212",maxLines:2,style: jostMedium.copyWith(fontSize: Dimensions.fontSizeSixteen),)),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ConfirmPaymentPage()));
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: AppColors.primaryClr,
                child: Text(
                  "View your order",
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
