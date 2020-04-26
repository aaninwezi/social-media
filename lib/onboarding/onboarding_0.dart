import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding0 extends StatelessWidget {
// height imahe
  final double height;
  Onboarding0(this.height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(height: height),
                Image.asset(
                  'images/image/friends.png',
                  // fit: BoxFit.fitHeight,
                  width: 500,
                  height: 200,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Keep in touch with family and friends',
              textAlign: TextAlign.center,
              style: GoogleFonts.barlowCondensed(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              // style: Theme.of(context).textTheme.title,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Stay connected with your loved ones',
                style: GoogleFonts.barlowCondensed(
                  fontSize: 20,
                ),
                // maxLines: 4,
                //style: Theme.of(context).textTheme.body1,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
