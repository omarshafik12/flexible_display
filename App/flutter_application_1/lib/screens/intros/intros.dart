import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white, fontSize: 16), // Dummy DefaultTextStyle
            child: Stack(
              children: [
                Image.asset(
                  'assets/intro_pages/background/intro_page_1.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Align(
                  alignment: const Alignment(0, 0.7),
                  child: Text(
                    "Aspire to Inspire\nBefore we Expire",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'PermanentMarker',
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white, fontSize: 16),
            child: Stack(
              children: [
                Image.asset(
                  'assets/intro_pages/background/intro_page_2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Align(
                  alignment: const Alignment(0, 0.5),
                  child: Text(
                    "Be Free\nBe You",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'PermanentMarker',
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0,0.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      },
                      
                    child: const Text("go home"),
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// need to add button widget later