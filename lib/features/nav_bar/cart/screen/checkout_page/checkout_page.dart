import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/address_page/add_new_address_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../../common/custom_lists/accessories_list.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
    title: Text("Checkout",
    style: jostSemiBold.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeEighteen)),
        ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddNewAddressPage()));
                        },style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                side: BorderSide(width: 1,color:AppColors.primaryClr,),
                              ),
                              child: Text("Add Delivery Address",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.primaryClr),)),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        //height: 370,
                        //width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1,color: AppColors.grey2),
                          color: AppColors.grey2.withOpacity(0.3),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your order",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),),
                            SizedBox(height: 12,),
                            Container(
                              //height: 150,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: AppColors.grey2),
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.white,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          /*height: 82,
                                          width: 67,*/
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 1,color: AppColors.grey2),
                                              color: AppColors.grey2.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Image.asset("assets/images/image 21.png",height: 60,width: 45,)),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Visor New Vario 125 & 150 eSP K59J",maxLines: 5,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                                            SizedBox(height: 10,),
                                            Text("Brand: Honda, Color: Red, Size: 20M",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Qty:2",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                                      Text("BDT 4,350.00",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 12,),
                            Container(
                              //height: 150,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: AppColors.grey2),
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.white,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: AppColors.grey2.withOpacity(0.5),
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Image.asset("assets/images/image 24.png",height: 60,width: 45,)),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Rubber Step Floor New Vario 125 K60R & 150 eSP K59J",maxLines: 5,style:jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                                            SizedBox(height: 10,),
                                            Text("Brand: Honda, Color: Red, Size: 20M",style:jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen,color: AppColors.grey3),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Qty:1",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                                      Text("BDT 5,990.00",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        //height: 135,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: AppColors.grey2),
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.grey2.withOpacity(0.3),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Summary",style: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                            SizedBox(height: 9,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Subtotal",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                                Text("BDT 10,340.00",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("delivery fee",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                                Text("BDT 70.00",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Grand Total",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                                Text("BDT 10,410.00",style: jostMedium.copyWith(fontSize: Dimensions.fontSizeFourteen),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(onPressed: (){
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CheckoutPage()));
              },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),color: AppColors.primaryClr,child: Text("Place Order",style: jostMedium.copyWith(color: AppColors.white,fontSize: Dimensions.fontSizeSixteen),),),
            ),
          ],
        ),
      ),
    );
  }
}
