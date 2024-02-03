// import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';

// class CustomLoadingAnimation extends StatefulWidget {
//   const CustomLoadingAnimation({super.key});

//   @override
//   CustomLoadingAnimationState createState() => CustomLoadingAnimationState();
// }

// class CustomLoadingAnimationState extends State<CustomLoadingAnimation>
//     with TickerProviderStateMixin {
//   late FlutterGifController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = FlutterGifController(vsync: this);
//     controller.repeat(
//       min: 0,
//       max: 29,
//       period: const Duration(milliseconds: 700),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GifImage(
//         controller: controller,
//         image: const AssetImage('assets/images/loader.gif'),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
