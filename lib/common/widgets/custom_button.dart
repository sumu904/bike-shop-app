import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},child: Text("View All" ),
      padding: EdgeInsets.all(0),
      textColor: Colors.red,
      minWidth: 70,
      height: 30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
              color: Colors.red
          )
      ),);
  }
}
