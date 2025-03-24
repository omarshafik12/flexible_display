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
      extendBody: true,
      bottomNavigationBar: Material(
              color: Colors.transparent,
              elevation: 100,
              child: ClipPath(
                child: SizedBox(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Colors.deepPurple,
                                size: 30,
                              ),
                              onPressed: () {
                                setState() {}
                              }),
                          IconButton(
                              icon: Icon(
                                Icons.branding_watermark,
                                size: 30,
                                color: Colors.black54,
                              ),
                              onPressed: () {}),
                          SizedBox(
                            width: 50,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.cloud_download,
                                size: 30,
                                color: Colors.black54,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.face,
                                size: 30,
                                color: Colors.black54,
                              ),
                              onPressed: () {}),
                        ],
                      )),
                  height: 90,
                  width: double.infinity,
                ),
                clipper: CurveDraw(),
              ),
            ),
            floatingActionButton: MaterialButton(
              color: Colors.deepPurple,
              padding: EdgeInsets.all(20),
              onPressed: () {},
              shape: CircleBorder(),
              child: Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CurveDraw extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double sw = size.width;
    double sh = size.height;
    double gapConst = 50;
    print(sh);
    Path path = Path();
    path.moveTo(0, sh);
    path.lineTo(0, sh / 2);
    path.quadraticBezierTo(0, 0, sh / 2, 0); //1st curve
    path.lineTo(sw / 2 - sw / 5, 0);
    path.cubicTo(sw / 2 - sw / 8, 0, sw / 2 - sw / 8, sh / 2, sw / 2, sh / 2);
    path.cubicTo(
        sw / 2 + sw / 8, sh / 2, sw / 2 + sw / 8, 0, sw / 2 + sw / 5, 0);

    path.lineTo(sw - sh / 2, 0);

    // path.quadraticBezierTo(
    //     150, size.height - 100, 150, size.height - 110); //2nd Curve IMP
    // path.lineTo(size.width - 150, size.height - 100); //draw semi circle
    // path.quadraticBezierTo(size.width - 150, size.height - 100, size.width - 90,
    //     size.height - 100);
    // path.lineTo(size.width - 60, size.height - 100);
    path.quadraticBezierTo(sw, 0, size.width, sh / 2);
    path.lineTo(sw, sh);
    // path.quadraticBezierTo(
    //     size.width / 2 - 50, size.height / 3, 2 * size.width / 3, 0);
    //path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

// need to add button widget later
// https://www.youtube.com/results?search_query=CircularNotchedRectangle()
// https://github.com/flutter/flutter/issues/56037
// https://stackoverflow.com/questions/78476244/flutter-smoother-circular-of-notched-bottomappbar
// https://github.com/flutter/flutter/issues/21650