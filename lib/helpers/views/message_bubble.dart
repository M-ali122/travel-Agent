import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final String time;
  final bool isMe;

  const MessageBubble(
      {super.key,
      required this.sender,
      required this.text,
      required this.isMe,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Material(
            elevation: 5.0,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(15.0),
            ),
            color: isMe ? const Color(0xFF212329) : const Color(0xFF30879B),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              time,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          // Material(
          //   elevation: 5.0,
          //   borderRadius: BorderRadius.only(
          //     topLeft: isMe ? const Radius.circular(30.0) : Radius.zero,
          //     topRight: isMe ? Radius.zero : const Radius.circular(30.0),
          //     bottomLeft: const Radius.circular(30.0),
          //     bottomRight: const Radius.circular(30.0),
          //   ),
          //   color: isMe ? Colors.orangeAccent : Colors.white,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          //     child: Text(
          //       text,
          //       style: TextStyle(
          //         fontSize: 15.0,
          //         color: isMe ? Colors.white : Colors.black,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
