import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/all_orders_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/cancelled_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/delivered_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/processing_page.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/shipped_page.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
        onPressed: ()
    {
      Navigator.of(context).pop();
    },
    icon: Icon(Icons.arrow_back),
    ),
    title: Text("My Orders",
    style: jostSemiBold.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeEighteen)),
    ),
    body: DefaultTabController(
      initialIndex: 0,
      length: 5,
    child: Column(
      children: [
        Container(
          child: TabBar(
            indicatorColor: AppColors.primaryClr,
            unselectedLabelColor: AppColors.grey3.withOpacity(0.6),
            labelStyle: jostSemiBold.copyWith(fontSize: Dimensions.fontSizeSixteen),
            labelPadding: EdgeInsets.only(left: 10,right: 10,),
            padding: EdgeInsets.only(left: 10,right: 10),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: <Widget>[
              Tab(
                text: ("All"),
              ),
              Tab(
                text: ("Processing"),
              ),
              Tab(
                text: ("Shipped"),
              ),
              Tab(
                text: ("Delivered"),
              ),
              Tab(
                text: ("Cancelled"),
              ),
            ],
          ),
        ),

    Expanded(
      child: TabBarView(
      children: <Widget>[
      Container(
        child: AllOrdersPage(),
      ),
        Container(
          child: ProcessingPage(),
        ),
        Container(
          child: ShippedPage(),
        ),
        Container(
          child: DeliveredPage(),
        ),
        Container(
          child: CancelledPage(),
        ),
      ],
      ),
    ),
    ]))
    );
  }
}
