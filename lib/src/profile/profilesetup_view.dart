// import 'package:app/common/utils/appcolors.dart';
// import 'package:app/common/widgets/custom_button.dart';
// import 'package:app/common/widgets/text_field.dart';
// import 'package:app/src/onboarding/onboarding_view.dart';
// import 'package:flutter/material.dart';

// import '../../common/utils/asset_names.dart';
// import '../../common/utils/dimension.dart';

// class ProfileSetupScreen extends StatefulWidget {
//   const ProfileSetupScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
// }

// class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];

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
//               padding: EdgeInsets.only(top: Dimens.height4),
//               child: const Icon(
//                 Icons.arrow_back_ios_new,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           title: Padding(
//             padding: EdgeInsets.only(top: Dimens.height4),
//             child: Text(
//               "Profile Setup",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: Dimens.height3,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//       ),
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: Dimens.height4),
//         physics: const BouncingScrollPhysics(),
//         children: [
//           SizedBox(
//             height: Dimens.height6,
//           ),
//           SizedBox(
//               height: Dimens.height20, child: Image.asset(AssetName.getImage)),
//           SizedBox(
//             height: Dimens.height6,
//           ),
//           Text(
//             "What’s your name?",
//             style: TextStyle(
//                 color: const Color(AppColors.titleText),
//                 fontSize: Dimens.height3,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: Dimens.height2,
//           ),
//           CustomTextField(
//             text: "Full Name",
//             controller: TextEditingController(),
//             suffixIcon: null,
//             prefixIcon: null,
//           ),
//           SizedBox(
//             height: Dimens.height4,
//           ),
//           Text(
//             "When’s your birthday?",
//             style: TextStyle(
//                 color: const Color(AppColors.titleText),
//                 fontSize: Dimens.height3,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: Dimens.height2,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 width: Dimens.width24,
//                 height: Dimens.height6,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: const Color(AppColors.border)),
//                   borderRadius: BorderRadius.circular(Dimens.height2),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: Dimens.width4),
//                   child: DropdownButton(
//                       underline: const SizedBox.shrink(),
//                       hint: const Text("Day"),
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       onChanged: (value) {}),
//                 ),
//               ),
//               Container(
//                 width: Dimens.width30,
//                 height: Dimens.height6,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: const Color(AppColors.border)),
//                   borderRadius: BorderRadius.circular(Dimens.height2),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: Dimens.width4),
//                   child: DropdownButton(
//                       underline: const SizedBox.shrink(),
//                       hint: Padding(
//                         padding: EdgeInsets.only(right: Dimens.width6),
//                         child: const Text("Month"),
//                       ),
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       onChanged: (value) {}),
//                 ),
//               ),
//               Container(
//                 width: Dimens.width24,
//                 height: Dimens.height6,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: const Color(AppColors.border)),
//                   borderRadius: BorderRadius.circular(Dimens.height2),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: Dimens.width4),
//                   child: DropdownButton(
//                       underline: const SizedBox.shrink(),
//                       hint: const Text("year"),
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(items),
//                         );
//                       }).toList(),
//                       onChanged: (value) {}),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: Dimens.height10,
//           ),
//           CustomButton(
//               text: "Done",
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const OnBoardingScreen()));
//               }),
//           SizedBox(
//             height: Dimens.height4,
//           ),
//         ],
//       ),
//     );
//   }
// }
