
// import 'package:flutter/material.dart';

// import '../../common/utils/appcolors.dart';
// import '../../common/utils/asset_names.dart';

// class CongratScreen extends StatelessWidget {
//   const CongratScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: Dimens.height4),
//         physics: const BouncingScrollPhysics(),
//         children: [
//           SizedBox(
//             height: Dimens.height28,
//           ),
//           SizedBox(
//             height: Dimens.height20,
//             child: Center(
//               child: Image(
//                 image: AssetImage(AssetName.congrats),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: Dimens.height2,
//           ),
//           Center(
//             child: Text(
//               "Congrats",
//               style: TextStyle(
//                   fontSize: Dimens.height4, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(
//             height: Dimens.height4,
//           ),
//           Center(
//             child: Text(
//               "You have successfully changed your password",
//               style: TextStyle(
//                 fontSize: Dimens.height019,
//                 color: const Color(AppColors.bodyText),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: Dimens.height4,
//           ),
//           CustomButton(
//               text: "Go back to log in",
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const LoginScreen()));
//               })
//         ],
//       ),
//     );
//   }
// }
