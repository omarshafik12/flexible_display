import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar_bottom_bar.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBars(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/home_page/background/home_1.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Align(
                  alignment: const Alignment(0,0.3),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      },
                      
                    child: const Text("HOW TO"),
                  ),
                ),
              ],
            )
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/home_page/background/home_2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Align(
                  alignment: const Alignment(0,0.3),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      },
                      
                    child: const Text("DISPLAY"),
                  ),
                ),
                Align(
                  alignment: const Alignment(0,0.7),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                      },
                      
                    child: const Text("SUBSCRIBE"),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}