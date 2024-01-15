// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// class OnboadScreenComponent extends StatelessWidget {
//
//   String title,tagline,image;
//
//   OnboadScreenComponent({
//     required this.image,
//     required this.title,
//     required this.tagline,
//
//     super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: const EdgeInsets.symmetric(vertical: 50),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 200,
//             height: 100,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("${image}")
//                 )
//             ),
//           ),
//           // Image(
//           //   // width: 500,
//           //     height: 300,
//           //     image: AssetImage(image)),
//           SizedBox(
//             height: 10,
//           ),
//           Text(title,style: TextStyle(
//             color: Colors.white,
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),),
//           SizedBox(
//             height: 10,
//           ),
//           Container(
//             height: 200,
//             width: 250,
//             child: Text(tagline,textAlign: TextAlign.center,style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.white
//               // fontWeight: FontWeight.bold,
//             ),),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class OnboadScreenComponent extends StatelessWidget {
  final String title, tagline, image;

  OnboadScreenComponent({
    required this.image,
    required this.title,
    required this.tagline,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("$image"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 250,
              child: Text(
                tagline,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
