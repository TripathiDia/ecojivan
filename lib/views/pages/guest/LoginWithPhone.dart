import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/views/pages/authenticated/HomeIndex.dart';
import 'package:ecojivan/views/pages/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({Key? key}) : super(key: key);

  @override
  _LoginWithPhoneState createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController phoneController = TextEditingController(text: "");
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientdecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: "Phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),

                // decoration: InputDecoration(
                //   labelText: "Phone number"),
                keyboardType: TextInputType.phone,
                maxLength: 10,
              ),
              Visibility(
                child: TextField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                ),
                visible: otpVisibility,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (otpVisibility) {
                    verifyOTP();
                  } else {
                    loginWithPhone();
                  }
                },
                child: Text(otpVisibility ? "Verify" : "Login"),
              ),
               SizedBox(height: 10),

              Text('OR', style: TextStyle(fontSize: 15, color: Colors.white),),
              SizedBox(height: 10),

                   ElevatedButton(
                onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeIndex()), (route) => false); 
                },
                child: Text("GUEST LOGIN"),
              ),
               SizedBox(height: 10),



            ],
          ),
        ),
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: '+91${phoneController.text}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("----------------------------------------------------");
          print("verificationCompleted");
          print("----------------------------------------------------");
          // print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
        print("----------------------------------------------------");
        print("verificationCompleted");
        print("----------------------------------------------------");
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
        print("----------------------------------------------------");
        print("codeSent");
        print("----------------------------------------------------");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        print("----------------------------------------------------");
        print("Autocode retrieval ");
        print("----------------------------------------------------");
      },
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then((value) {
      //Firebase

      // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Registration()), (route) => false);
      // print("----------------------------------------------------");
      // print(value);
      if (value.additionalUserInfo!.isNewUser) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Registration()), (route) => false);
        //   // Navigator.of(context).pushNamedAndRemoveUntil('/register', (route) => false);
        //   // store uid in user provider
        print('Create new Account');
      } else {
        print('Already registered');
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeIndex()), (route) => false);
        //   // Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
      }
      // print("----------------------------------------------------");

      print("You are logged in successfully");

// UserCredential(
//   additionalUserInfo: AdditionalUserInfo(
//     isNewUser: false,
//     profile: {},
//     providerId: null,
//     username: null),
//     credential: null,
//     user: User(
//       displayName: null,
//       email: null,
//       emailVerified: false,
//       isAnonymous: false,
//       metadata: UserMetadata(
//         creationTime: 2021-12-23 16:49:44.757,
//         lastSignInTime: 2022-01-09 02:07:19.866
//       ),
//     phoneNumber: +911111111111,
//     photoURL: null,
//     providerData,
//     [
//       UserInfo(
//         displayName: null,
//         email: null,
//         phoneNumber: +911111111111,
//         photoURL: null,
//         providerId: phone,
//         uid: null
//       )
//     ],
//     refreshToken: ,
//     tenantId: null,
//     uid: bxNHihUyyNdoqgsqRFx0mvxa4B42
//     )
//   )

      Navigator.of(context).pushNamedAndRemoveUntil('/register', (route) => false);

      //                             Future<void> logOut(BuildContext context) async {
      //   try {
      //     final User firebaseUser = await FirebaseAuth.instance.currentUser;

      //     if (firebaseUser != null) {
      //         FirebaseAuth.instance.signOut().then((value) => {
      //           Navigator.of(context).pushNamedAndRemoveUntil(
      //                             '/verification', (route) => false),
      //         });
      //     }
      //   } catch (e) {
      //     print(e); // TODO: show dialog with error
      //   }
      // }

      // Fluttertoast.showToast(
      //     msg: "You are logged in successfully",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0
      // );
    });
  }
}

//sign out
// onPressed: ()async{
//           await _auth.signOut();
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//         },

// import 'package:flutter/material.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
// import 'package:the_country_number_widgets/the_country_number_widgets.dart';

// import '../constraint.dart';

// class Verification extends StatefulWidget {
//   @override
//   State<Verification> createState() => _VerificationState();
// }

// class _VerificationState extends State<Verification> {

//   var _showOtp;

//   @override
//   void initState() {
//     _showOtp = false;
//     super.initState();
//   }

//   void show() {
//     setState(() {
//       _showOtp = !_showOtp;
//     });
//   }
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: gradientdecoration,
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 enterphone,
//                 style: phoneverify,
//               ),
//               Padding(
//                 padding: paddingall,
//                 child: Container(
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   decoration: countryinput,
//                   child: TheCountryNumberInput(
//                     TheCountryNumber().parseNumber(iso2Code: "IN"),
//                     onChanged: (tn) {
//                       if (tn.isNotANumber()) {
//                         return;
//                       }
//                       if (tn.isValidLength) {
//                         show();
//                       }
//                     },
//                     //custom validation
//                     customValidator: (tn) {
//                       final enteredNumber = tn.number;
//                       //do something
//                       return null;
//                     },
//                   ),
//                 ),
//               ),
//               Visibility(

//                 child: Column(
//                   children: [
//                     Text(enterotp, style: otpverify),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 20),
//                       child: PinEntryTextField(
//                         onSubmit: (String pin) {
//                           Navigator.of(context).pushNamedAndRemoveUntil(
//                              '/register', (route) => false);
//                           // showDialog(
//                           //     context: context,
//                           //     builder: (context) {
//                           //       return AlertDialog(
//                           //         title: Text("Pin"),
//                           //         content: Text('Pin entered is $pin'),
//                           //       );
//                           //     });
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//                 visible:_showOtp,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
