import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';
import '../../../../../utils/dimensions.dart';
import '../../../../../utils/styles.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
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
        title: Text("Order Tracking",
            style: jostSemiBold.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.fontSizeEighteen)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(18),
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
                          text: ' #VXD695697863420',
                          style: jostSemiBold.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ORDER STATUS:',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Out For Delivery',
                          style: jostSemiBold.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.green),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ORDER DATE:',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)),
                      children: <TextSpan>[
                        TextSpan(
                          text: '  29 March, 2023',
                          style: jostSemiBold.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'ESTIMATED DELIVERY DATE:',
                      style: jostMedium.copyWith(
                          fontSize: Dimensions.fontSizeSixteen,
                          color: AppColors.grey3.withOpacity(0.6)),
                      children: <TextSpan>[
                        TextSpan(
                          text: '  1 April - 3 April',
                          style: jostSemiBold.copyWith(
                              fontSize: Dimensions.fontSizeSixteen,
                              color: AppColors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(children: [
                Row(children: [
                  Column(children: [
                    PointWidget(statusColor: AppColors.green),
                    Container(width: 1.5, height: 30, color: AppColors.green),
                    PointWidget(statusColor: AppColors.grey2),
                    Container(width: 1.5, height: 30, color: AppColors.grey2),
                    PointWidget(statusColor: AppColors.grey2),
                  ]),
                  SizedBox(width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StatusTitleWidget(
                          statusText: 'Processing ( 29 March )',
                        ),
                        SizedBox(height: 42),
                        StatusTitleWidget(
                          statusText: 'Shipped ( 31 March )',
                        ),
                        SizedBox(height: 42),
                        StatusTitleWidget(
                          statusText: 'Delivered ( 1 April - 3 April )',
                        ),
                      ]),
                ]),
              ]),
              SizedBox(
                height: 30,
              ),
              Text("Shipping Information",style: jostSemiBold.copyWith(
                  fontSize: Dimensions.fontSizeTwenty,
                  color: AppColors.black)),
              SizedBox(height: 20,),
              Text("Name: User Name",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
              SizedBox(height: 10,),
              Text("Phone: 0123456789",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
              SizedBox(height: 10,),
              Text("Email: xyz@gmail.com",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
              SizedBox(height: 10,),
              Text("Address: Mohaimid medical center, Madani Ave, Dhaka 1212, Moddho Vatara, Dhaka",style: jostRegular.copyWith(fontSize: Dimensions.fontSizeSixteen),),
            ],
          ),
        ),
      ),
    );
  }
}

class PointWidget extends StatelessWidget {
  final Color statusColor;

  const PointWidget({super.key, required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      width: 35,
      height: 35,
      child: Container(
        child: Icon(
          Icons.check,
          size: 12,
          color: AppColors.white,
        ),
        decoration: BoxDecoration(
          color: statusColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class StatusTitleWidget extends StatelessWidget {
  final String statusText;

  const StatusTitleWidget({
    super.key,
    required this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(statusText,
      style: jostMedium.copyWith(
          fontSize: Dimensions.fontSizeSixteen,
      )),
      ],
    );
  }
}
