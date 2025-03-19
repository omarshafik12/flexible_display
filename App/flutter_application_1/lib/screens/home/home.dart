import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "S T Y L E",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/home_page/icons/user.png'),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
        actions: [
          IconButton(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset('assets/home_page/icons/shopper.png'),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
        ],
      ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/homepage');
          },
        child: Icon(Icons.add)
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/home_page/icons/inform.png'),
              ),
              onPressed: () {Navigator.pushNamed(context, '/homepage');
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/home_page/icons/cross-mark.png'),
              ),
              onPressed: () {Navigator.pushNamed(context, '/homepage');
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/home_page/icons/price-tag.png'),
              ),
              onPressed: () {Navigator.pushNamed(context, '/homepage');
              },
            ),
            IconButton(
              icon: SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/home_page/icons/heart.png'),
              ),
              onPressed: () {Navigator.pushNamed(context, '/homepage');
              },
            ),
          ],
        )
      ),
    );
  }
}

// need to add button widget later
// https://www.youtube.com/results?search_query=CircularNotchedRectangle()