import 'package:flutter/material.dart';
import 'package:two_wheelers_bd/utils/colors.dart';

import '../../../../utils/dimensions.dart';
import '../../../../utils/styles.dart';

class LiveChatPage extends StatefulWidget {
  const LiveChatPage({super.key});

  @override
  State<LiveChatPage> createState() => _LiveChatPageState();
}

class _LiveChatPageState extends State<LiveChatPage> {
  TextEditingController chatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
        title: Text("Live Chat",style: jostSemiBold.copyWith(fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeEighteen)),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
        child: Column(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    maxRadius: 22,
                    child: Image.asset("assets/images/Logo.png",fit: BoxFit.cover,)
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 80,
                    width: 270,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: AppColors.offWhite,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("Dear Anika Tabasum! Hopeyou are having a great day!Ask me anything,I’m here to help.",maxLines: 3,style: jostMedium.copyWith(fontSize: Dimensions.fontSizeFifteen),),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              child:  Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        style: TextStyle(color: Colors.grey),
                        textInputAction: TextInputAction.next,
                        controller: chatController,
                        decoration: InputDecoration(
                          hintText: "Please write your questions here",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.attach_file_outlined),
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.blue,width: 1.5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 1.5, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.send,size: 30,),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      )
    );
  }
}
