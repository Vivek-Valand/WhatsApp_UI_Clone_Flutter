import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
           children: [
             for(int i = 1; i < 11; i++)
             InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, "chatPage");
                 },
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 12),
                   child: Row(
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(40),
                         child: Image.asset("images/profile1.jpg",
                           height: 55,//65
                          width: 55,//60
                           fit: BoxFit.cover,
                         ),
                       ),
                       Padding(padding: EdgeInsets.only(left: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Programmer",
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Hi, Programmer, how are you?",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),)
                        ],
                       ),
                       ),
                       Spacer(),
                       Column(
                         children: [
                           Text("12:15",
                           style: TextStyle(
                             fontSize: 12,//15
                             color: Color(0XFF0FCE5E),
                             fontWeight: FontWeight.w500,
                           ),
                           ),
                           SizedBox(
                             height: 6,
                           ),
                           Container(
                             alignment: Alignment.center,
                             width: 24,
                             height: 24,
                             decoration: BoxDecoration(
                               color: Color(0XFF0FCE5E),
                               borderRadius: BorderRadius.circular(15),//20
                             ),
                             child: Text("2",style: TextStyle(
                               fontWeight: FontWeight.w500,
                               color: Colors.white,
                               fontSize: 12,//16
                             ),),
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
             )
           ],
        ),
      ),
    );
  }
}
