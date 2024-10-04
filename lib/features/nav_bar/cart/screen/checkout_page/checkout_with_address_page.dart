import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/payment_page/payment_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/address_page/select_address_page.dart';
import 'package:two_wheelers_bd/utils/styles.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';

class CheckoutWithAddressPage extends StatefulWidget {
  const CheckoutWithAddressPage({super.key});

  @override
  State<CheckoutWithAddressPage> createState() =>
      _CheckoutWithAddressPageState();
}

class _CheckoutWithAddressPageState extends State<CheckoutWithAddressPage> {
  TextEditingController noteController = TextEditingController();

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
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          child: Column(children: [
                Container(
                    //padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: AppColors.grey2),
                      color: AppColors.grey2.withOpacity(0.3),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Billing Address",
                              style: jostSemiBold.copyWith(
                                  fontSize: Dimensions.fontSizeTwenty),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          SelectAddressPage()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12, right: 10, bottom: 8),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(width: 1.5, color: AppColors.grey2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Anika Tabasum",
                                  style: jostSemiBold.copyWith(
                                      fontSize: Dimensions.fontSizeTwenty),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SelectAddressPage()));
                                  },
                                  minWidth: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                          width: 1,
                                          color: AppColors.primaryClr)),
                                  child: Text(
                                    "Home",
                                    style: jostMedium.copyWith(
                                        color: AppColors.primaryClr,
                                        fontSize: Dimensions.fontSizeSixteen),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Phone Number: 0123456789",
                              style: jostRegular.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "E-mail: xyz@gmail.com",
                              style: jostRegular.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Area/District: Middle Badda",
                              style: jostRegular.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Address: Mohaimid medical center, Madani Ave, Dhaka 1212",
                              style: jostRegular.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shipping Address",
                              style: jostSemiBold.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          SelectAddressPage()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
                                ))
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order notes (optional)",
                              style: jostSemiBold.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen),
                            ),
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              title: Text(
                                                "Order Note",
                                                textAlign: TextAlign.center,
                                                style: jostSemiBold.copyWith(
                                                    color: AppColors.black,
                                                    fontSize: Dimensions
                                                        .fontSizeEighteen),
                                              ),
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Additional Note",
                                                    style: jostMedium.copyWith(
                                                        color: AppColors.black,
                                                        fontSize: Dimensions
                                                            .fontSizeSixteen),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  TextFormField(
                                                      style: TextStyle(
                                                          color:
                                                              AppColors.grey3),
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      controller:
                                                          noteController,
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        filled: true,
                                                        fillColor: AppColors
                                                            .grey2
                                                            .withOpacity(0.2),
                                                        hintText:
                                                            "Write here...",
                                                        hintStyle: TextStyle(
                                                            color:
                                                                AppColors.grey3,
                                                            fontSize: Dimensions
                                                                .fontSizeFourteen),
                                                      )),
                                                ],
                                              ),
                                              actions: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          "Cancel",
                                                          style: jostMedium.copyWith(
                                                              fontSize: Dimensions
                                                                  .fontSizeSixteen),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      MaterialButton(
                                                        color: AppColors
                                                            .primaryClr,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Add Note",
                                                          style: jostMedium.copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: Dimensions
                                                                  .fontSizeSixteen),
                                                        ),
                                                      ),
                                                    ])
                                              ]));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 18,
                                ))
                          ],
                        ),
                      ),
                    ])),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //height: 370,
                  //width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: AppColors.grey2),
                    color: AppColors.grey2.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your order",
                        style: jostSemiBold.copyWith(
                            fontSize: Dimensions.fontSizeSixteen),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        //height: 150,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColors.grey2),
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
                                        border: Border.all(
                                            width: 1, color: AppColors.grey2),
                                        color: AppColors.grey2.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Image.asset(
                                      "assets/images/image 21.png",
                                      height: 60,
                                      width: 45,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Visor New Vario 125 & 150 eSP K59J",
                                        maxLines: 5,
                                        style: jostSemiBold.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeFifteen),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Brand: Honda, Color: Red, Size: 20M",
                                        style: jostRegular.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeFourteen,
                                            color: AppColors.grey3),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Qty:2",
                                  style: jostRegular.copyWith(
                                      fontSize: Dimensions.fontSizeFourteen),
                                ),
                                Text(
                                  "BDT 4,350.00",
                                  style: jostMedium.copyWith(
                                      fontSize: Dimensions.fontSizeFifteen),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        //height: 150,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: AppColors.grey2),
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
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Image.asset(
                                      "assets/images/image 24.png",
                                      height: 60,
                                      width: 45,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rubber Step Floor New Vario 125 K60R & 150 eSP K59J",
                                        maxLines: 5,
                                        style: jostSemiBold.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeFifteen),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Brand: Honda, Color: Red, Size: 20M",
                                        style: jostRegular.copyWith(
                                            fontSize:
                                                Dimensions.fontSizeFourteen,
                                            color: AppColors.grey3),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Qty:1",
                                  style: jostRegular.copyWith(
                                      fontSize: Dimensions.fontSizeFourteen),
                                ),
                                Text(
                                  "BDT 5,990.00",
                                  style: jostMedium.copyWith(
                                      fontSize: Dimensions.fontSizeFifteen),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //height: 135,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.grey2),
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.grey2.withOpacity(0.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order Summary",
                        style: jostSemiBold.copyWith(
                            fontSize: Dimensions.fontSizeFifteen),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: jostRegular.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                          Text(
                            "BDT 10,340.00",
                            style: jostRegular.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "delivery fee",
                            style: jostRegular.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                          Text(
                            "BDT 70.00",
                            style: jostRegular.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Total",
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                          Text(
                            "BDT 10,410.00",
                            style: jostMedium.copyWith(
                                fontSize: Dimensions.fontSizeFourteen),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ])))),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PaymentPage()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  color: AppColors.primaryClr,
                  child: Text(
                    "Place Order",
                    style: jostMedium.copyWith(
                        color: AppColors.white,
                        fontSize: Dimensions.fontSizeSixteen),
                  ),
                ),
              ),
            ])));
  }
}
