import 'package:flutter/material.dart';
import 'Structure/constants.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(150, 0, 120, 200),
          title: const Center(
            child: Text('Welcome'),
          ),
        ),
        body: Column(
          children: [
            const Image(
              image: AssetImage('images/startingScreen.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Test Your Knowledge',
              style: frontPageTextStyle,
            ),
            const SizedBox(
              height: 25,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(200, 60), // Set the desired size here
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/question');
              },

              icon: const Icon(Icons.access_alarm_outlined,
              color: Color.fromARGB(150, 0, 120, 200),),
              label: const Text(
                'START',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
