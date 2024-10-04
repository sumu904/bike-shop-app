import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/cart/screen/checkout_page/checkout_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../common/custom_lists/accessories_list.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';
import '../../nav_bar_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool? isChecked = true;
  TextEditingController couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("My Cart",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              title: Text(
                                "Delete From Cart",
                                textAlign: TextAlign.center,
                                style: jostSemiBold.copyWith(
                                    color: AppColors.black,
                                    fontSize: Dimensions.fontSizeEighteen),
                              ),
                              content: Text(
                                "Are you sure you want to delete the selected products from the cart?",
                                style: jostRegular.copyWith(
                                    color: AppColors.grey3,
                                    fontSize: Dimensions.fontSizeSixteen),
                              ),
                              actions: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: jostMedium.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeSixteen),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      MaterialButton(
                                        color: AppColors.primaryClr,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        onPressed: () {},
                                        child: Text(
                                          "Delete",
                                          style: jostMedium.copyWith(
                                              color: Colors.white,
                                              fontSize:
                                                  Dimensions.fontSizeSixteen),
                                        ),
                                      ),
                                    ])
                              ]));
                },
                icon: Icon(Icons.delete_outline_outlined)),
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                  child: Column(
                    children: [
                      SizedBox(
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsets.only(
                                    top: 15,
                                    right: 10,
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border:
                                          Border.all(color: AppColors.grey2)),
                                  //width: 390,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: isChecked,
                                            checkColor: Colors.red,
                                            activeColor: Colors.white,
                                            side: MaterialStateBorderSide
                                                .resolveWith((states) =>
                                                    BorderSide(
                                                      color: isChecked == true
                                                          ? AppColors.primaryClr
                                                          : AppColors.grey3,
                                                      width: 2,
                                                    )),
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value;
                                              });
                                            },
                                          ),
                                          Container(
                                              height: 82,
                                              width: 67,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: AppColors.grey2
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Image.asset(
                                                  "${accessoriesList[index].image}")),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${accessoriesList[index].title}",
                                                  maxLines: 5,
                                                  style: jostSemiBold.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSixteen),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Brand: Honda, Color: Red, Size: 20M",
                                                  style: jostRegular.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeFourteen,
                                                      color: AppColors.grey3),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.all(9),
                                        decoration: BoxDecoration(
                                            color: AppColors.grey2
                                                .withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${accessoriesList[index].price}",
                                                  style: jostSemiBold.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeTwelve,
                                                      color: AppColors.grey3),
                                                ),
                                                Text(
                                                  "${accessoriesList[index].price}",
                                                  style: jostSemiBold.copyWith(
                                                      fontSize: Dimensions
                                                          .fontSizeSixteen,
                                                      color: AppColors.grey3),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: 37,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.remove,
                                                        size: 15,
                                                      )),
                                                  Text("2"),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.add,
                                                        size: 15,
                                                      )),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                );
                              })),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                  //style: TextStyle(decoration: TextDecoration.none,decorationThickness: 0,),
                                  controller: couponController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: AppColors.grey2.withOpacity(0.2),
                                    hintText: "Coupon code here...",
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: AppColors.grey2,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "Apply",
                                  style: jostMedium.copyWith(
                                      color: AppColors.white,
                                      fontSize: Dimensions.fontSizeSixteen),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //height: 67,
              padding: EdgeInsets.only(top: 10, right: 15, bottom: 10),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    checkColor: Colors.red,
                    activeColor: Colors.white,
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(
                              color: isChecked == true
                                  ? AppColors.primaryClr
                                  : AppColors.grey3,
                              width: 2,
                            )),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Text(
                    "Select All",
                    style: jostMedium.copyWith(
                        fontSize: Dimensions.fontSizeFourteen),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Delivery fee: BDT 70.00",
                          style: jostRegular.copyWith(
                            fontSize: Dimensions.fontSizeTwelve,
                            color: AppColors.grey3,
                          )),
                      Text("Total: BDT 10,410.00",
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeFourteen)),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                            return CheckoutPage();
                          },
                          fullscreenDialog: true));
                    },
                    color: AppColors.primaryClr,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Checkout",
                        style: jostMedium.copyWith(
                            color: AppColors.white,
                            fontSize: Dimensions.fontSizeSixteen),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
