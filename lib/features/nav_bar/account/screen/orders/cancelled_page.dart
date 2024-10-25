import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/features/nav_bar/account/screen/orders/tracking_cancel_page.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';
import '../../../cart/screen/cart_page.dart';

class CancelledPage extends StatefulWidget {
  const CancelledPage({super.key});

  @override
  State<CancelledPage> createState() => _CancelledPageState();
}

class _CancelledPageState extends State<CancelledPage> {
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.grey3.withOpacity(0.2)),
                  color: AppColors.grey2.withOpacity(0.3)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'ORDER ID:',
                          style: jostMedium.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.grey3.withOpacity(0.6)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' #VXD69569',
                              style: jostSemiBold.copyWith(
                                  fontSize: Dimensions.fontSizeSixteen,
                                  color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Text("29 March, 2023",style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)))
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Text("ORDER STATUS:",style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6))),
                      TextButton(onPressed: (){}, child: Text("CANCELLED",style: jostSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.primaryClr)))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartPage()));
                          },
                          child: Text(
                            "Re-order",
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrackingCancelPage()));
                          },
                          child: Text(
                            "Track Order",
                            style: jostMedium.copyWith(
                                color: Colors.white,
                                fontSize:
                                Dimensions.fontSizeSixteen),
                          ),
                        ),
                      ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
