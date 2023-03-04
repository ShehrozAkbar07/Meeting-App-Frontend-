// import 'package:app/common/utils/appcolors.dart';
// import 'package:app/common/widgets/custom_button.dart';
// import 'package:app/src/utils_screens/congrats_view.dart';
// import 'package:flutter/material.dart';

// import '../../../common/utils/dimension.dart';
// import '../../../common/widgets/text_field.dart';

// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({Key? key}) : super(key: key);

//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: PreferredSize(
//         preferredSize:
//             Size.fromHeight(Dimens.height8), // here the desired height
//         child: AppBar(
//           leading: InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Padding(
//               padding: EdgeInsets.only(top: Dimens.height4, left: 20),
//               child: const Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//       ),
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: Dimens.height4),
//         physics: const BouncingScrollPhysics(),
//         children: [
//           SizedBox(
//             height: Dimens.height8,
//           ),
//           Text(
//             "Password",
//             style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: Dimens.height4),
//           ),
//           SizedBox(
//             height: Dimens.height2,
//           ),
//           Text(
//             "Please enter your new password",
//             style: TextStyle(
//                 color: const Color(AppColors.bodyText),
//                 fontSize: Dimens.height2),
//           ),
//           SizedBox(
//             height: Dimens.height6,
//           ),
//           Text(
//             "Password",
//             style: TextStyle(color: Colors.black, fontSize: Dimens.height2),
//           ),
//           SizedBox(
//             height: Dimens.height3,
//           ),
//           CustomTextField(
//             text: "New Password",
//             controller: TextEditingController(),
//             suffixIcon: null,
//             prefixIcon: null,
//           ),
//           SizedBox(
//             height: Dimens.height3,
//           ),
//           Text(
//             "Confirm Password",
//             style: TextStyle(color: Colors.black, fontSize: Dimens.height2),
//           ),
//           SizedBox(
//             height: Dimens.height3,
//           ),
//           CustomTextField(
//             text: "Confirm Password",
//             controller: TextEditingController(),
//             suffixIcon: null,
//             prefixIcon: null,
//           ),
//           SizedBox(
//             height: Dimens.height8,
//           ),
//           CustomButton(
//               text: "Save",
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CongratScreen()));
//               }),
//           SizedBox(
//             height: Dimens.height4,
//           ),
//         ],
//       ),
//     );
//   }
// }
