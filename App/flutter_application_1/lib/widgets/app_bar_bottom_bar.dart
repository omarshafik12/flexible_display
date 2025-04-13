import 'package:flutter/material.dart';
import 'dart:math' as math;
import "package:google_fonts/google_fonts.dart";

// useful resources
// https://www.youtube.com/watch?app=desktop&v=yNN8NthQIu4&ab_channel=BleylDev

class CustomBars extends StatelessWidget {
  final Widget body;

  const CustomBars({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Transform.rotate(
          angle: -math.pi / 10,
          child: Text(
            'Style',
            style: GoogleFonts.allura(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        leading: IconButton(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/home_page/icons/user.png'),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/login'); //change when done
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
      body: body,
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
                              width: 42,
                              height: 42,
                              child: Image.asset('assets/home_page/icons/cross-mark.png'),
                            ),
                            onPressed: () {Navigator.pushNamed(context, '/homepage');
                            },
                          ),
                          SizedBox(
                            width: 50,
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
                      )),
                  height: 90,
                  width: double.infinity,
                ),
                clipper: CurveDraw(),
              ),
            ),
            floatingActionButton: MaterialButton(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              onPressed: () {},
              shape: CircleBorder(),
              child: Transform.rotate(
                angle: -math.pi / 10,
                child: Text(
                  'Style',
                  style: GoogleFonts.allura(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
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
    path.lineTo(0, sh / sh);
    //path.quadraticBezierTo(0, 0, sh / 2, 0); this curves it on the edges if you also: path.lineTo(0, sh / 2);
    path.lineTo(sw / 2 - sw / 5, 0);
    path.cubicTo(sw / 2 - sw / 8, 0, sw / 2 - sw / 8, sh / 2, sw / 2, sh / 2);
    path.cubicTo(
        sw / 2 + sw / 8, sh / 2, sw / 2 + sw / 8, 0, sw / 2 + sw / 5, 0);

    path.lineTo(sw - sh / sh, 0);

    // path.quadraticBezierTo(
    //     150, size.height - 100, 150, size.height - 110); //2nd Curve IMP
    // path.lineTo(size.width - 150, size.height - 100); //draw semi circle
    // path.quadraticBezierTo(size.width - 150, size.height - 100, size.width - 90,
    //     size.height - 100);
    // path.lineTo(size.width - 60, size.height - 100);
    //path.quadraticBezierTo(sw, 0, size.width, sh / 2); this curves it on the edges
    path.lineTo(sw, sh);
    // path.quadraticBezierTo(
    //     size.width / 2 - 50, size.height / 3, 2 * size.width / 3, 0); if: path.lineTo(sw - sh / 2, 0);
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