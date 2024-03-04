import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:soci_app/home/donate.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  late List<Widget> _children;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _children = [
      Image.asset('assets/first.jpg'),
      Image.asset('assets/second.jpg'),
      Image.asset('assets/third.jpg'),
      Image.asset('assets/fourth.jpg'),
      Image.asset('assets/fifth.jpg'),
    ];

    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _index = (_index + 1) % _children.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Text(
                "---Community and Unity---",
                style: TextStyle(
                  fontFamily: 'times',
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: AnimatedSwitcher(
                  duration: const Duration(seconds: 0),
                  child: _children[_index]),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: const Column(
                children: [
                  Text(
                    "' We can't all do great things, but we can do small things with great love '",
                    style: TextStyle(
                      fontFamily: 'times',
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "- Mother Teresa",
                    style: TextStyle(
                      fontFamily: 'times',
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 50, // Adjust this to control the space around the divider
            ),
            //Google Maps Section
            const Column(
              children: <Widget>[
                Text(
                  'NAMS SNEHASADAN :',
                  style: TextStyle(
                      fontSize: 24, fontFamily: 'times', letterSpacing: 1),
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(13.094567, 77.539698),
                      zoom: 17.5,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
              height: 50, // Adjust this to control the space around the divider
            ),
            //Start of the Article
            const Text(
              "Spreading Joy: A Day of Community and Connection",
              style: TextStyle(
                fontFamily: 'times',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            //first gif
            Center(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  child: Lottie.asset(
                    'assets/college.json',
                  )),
            ),
            const Text(
              "Students from the Master of Computer Applications (MCA) program at Acharya Institute of Technology (AIT) recently embarked on a heartwarming community service initiative, bringing smiles to the faces of senior citizens and children alike. \n",
              style: TextStyle(
                fontFamily: 'times',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

            //second gif
            Center(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 04, 0, 0),
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  child: Lottie.asset(
                    'assets/oldage.json',
                  )),
            ),
            const Text(
              "The MCA students visited a local old age Home, where they donated much-needed adult diapers and interacted with the residents. They engaged in meaningful conversations, sang songs, and played games, creating a sense of connection and fostering a spirit of care and compassion.\n",
              style: TextStyle(
                fontFamily: 'times',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

            //third gif
            Center(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 04, 0, 0),
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  child: Lottie.asset(
                    'assets/play.json',
                  )),
            ),
            const Text(
              "Following their visit to the old age Home, the AIT MCA students headed to a local school, carrying with them the spirit of giving. They donated essential supplies and engaged with the children through song, dance, and engaging games. Their youthful energy and enthusiasm created a joyous atmosphere, leaving a lasting impression on the young minds.\n",
              style: TextStyle(
                fontFamily: 'times',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            //fourth gif
            Center(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 04, 0, 0),
                  alignment: Alignment.center,
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20)),
                  child: Lottie.asset(
                    'assets/acharya.json',
                  )),
            ),
            const Text(
              "Acharya Institute of Technology is lauded for its commitment to fostering social responsibility in its students. This initiative by the MCA students exemplifies the institute's dedication to giving back to the community and making a positive impact on the lives of others.\n\n",
              style: TextStyle(
                fontFamily: 'times',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),

            //Donation Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // background color
                foregroundColor:
                    Colors.white, // Use foregroundColor instead of onPrimary
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // rounded corners
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 12), // padding
              ),
              child: const Text(
                'Support us by Donating !',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Donate();
                }), (r) {
                  return true;
                });
              },
            ),
            const Divider(
              color: Colors.white,
              height: 50, // Adjust this to control the space around the divider
            ),
          ],
        ),
      ),
    );
  }
}
