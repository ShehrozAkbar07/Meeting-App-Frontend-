import 'package:flutter/material.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/text_field.dart';
import '../signup/signup_view.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/overlay.png",
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
          Align(
            alignment: Alignment.topLeft,
            child:  Padding(
              padding:  EdgeInsets.only(top: size.height * 0.05,left: size.width * 0.05),
              child: InkWell(
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
            ),
            ),
          
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.15),
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
                // height: size.height,
                // width: size.width,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height / 1.75,
              decoration: const BoxDecoration(
                color: Color(0xff878E89),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ), //Welcome back to a secure experience!Welcome back to a secure experience!Welcome back to a secure experience!
                      Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                        ),
                        child: const Text(
                          "Send a password reset link",
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      CustomTextField(
                          text: "Enter email address",
                          controller: TextEditingController()),

                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      CustomButton(text: "Send Link", onPressed: () {}),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
