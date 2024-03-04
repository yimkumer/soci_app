import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:soci_app/home/homepage.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  final controller = TextEditingController();
  final controller1 = TextEditingController();
  bool click = true;
  bool validate = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                      "---- Support Us ----",
                      style: TextStyle(
                        fontFamily: 'times',
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Center(
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 04, 0, 04),
                          alignment: Alignment.center,
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          child: Lottie.asset(
                            'assets/donate.json',
                          )),
                    ),
                  ),
                  const Text(
                    "' Giving is not just about making a donation. It is about making a difference '",
                    style: TextStyle(
                      fontFamily: 'times',
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "- Kathryn McMillen",
                    style: TextStyle(
                      fontFamily: 'times',
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),

                  //Name and Amount section
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Name',
                        hintStyle: TextStyle(
                          fontFamily: 'times',
                          fontSize: 20,
                          letterSpacing: 01,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.blue,
                          size: 35,
                        ),
                        iconColor: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: TextField(
                      controller: controller1,
                      decoration: const InputDecoration(
                        hintText: "Enter Amount",
                        hintStyle: TextStyle(
                          fontFamily: 'times',
                          fontSize: 20,
                          letterSpacing: 01,
                          color: Colors.blue,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        icon: Icon(
                          Icons.edit_note_sharp,
                          color: Colors.blue,
                          size: 35,
                        ),
                        iconColor: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  const Divider(
                    color: Colors.white,
                    height:
                        50, // Adjust this to control the space around the divider
                  ),
                  //Google Maps Section
                  const Column(
                    children: <Widget>[
                      Text(
                        'Find us Here :',
                        style: TextStyle(fontSize: 24, fontFamily: 'times'),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: LatLng(13.0846, 77.4846),
                            zoom: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    height:
                        50, // Adjust this to control the space around the divider
                  ),

                  //Donate Button Section
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () async {
                                if (controller.text.isEmpty
                                    ? validate = true
                                    : validate =
                                        false || controller1.text.isEmpty
                                            ? validate = true
                                            : validate = false) {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40.0)),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                          alignment: Alignment.center,
                                          icon: Icon(
                                            Icons.question_mark_outlined,
                                            size: 40,
                                          ),
                                          iconColor: Colors.blue,
                                          content: Text(
                                            'Fill up both Fields please',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.blue,
                                              letterSpacing: 1,
                                              fontFamily: 'times',
                                            ),
                                          ),
                                        );
                                      });
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40.0)),
                                            side:
                                                BorderSide(color: Colors.blue),
                                          ),
                                          alignment: Alignment.center,
                                          icon: Icon(
                                            Icons.favorite_border_sharp,
                                            size: 40,
                                          ),
                                          iconColor: Colors.blue,
                                          content: Text(
                                            "Thank you for your Donation",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.blue,
                                              letterSpacing: 1,
                                              fontFamily: 'times',
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        );
                                      });
                                  controller.clear();
                                  controller1.clear();
                                }
                              },
                              //Button Text section
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Donate',
                                    style: TextStyle(
                                      fontFamily: 'times',
                                      fontSize: 24,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 05,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 05,
                                  ),
                                  Text(
                                    'Now',
                                    style: TextStyle(
                                      fontFamily: 'times',
                                      fontSize: 24,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Home();
                      }), (r) {
                        return true;
                      });
                    },
                    child: const Text(
                      'Go back Home',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'times',
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
