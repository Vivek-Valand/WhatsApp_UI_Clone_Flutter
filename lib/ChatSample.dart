import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipperTwo(MessageType.receive),
          child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              "Hi, Developers, How are you?",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20,left: 80,bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
              decoration: BoxDecoration(
                color: Color(0XFFE4FDCA),
              ),
              child: Text(
                "Hi, Programmer, I'am fine and well. thanks for asking and what about you. \nI hope you will be also fine.",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        )
      ],
    );
  }
}
