import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2 extends StatelessWidget {
  final double h;
  final Function back;
  Onboarding2(this.h, this.back);
  @override
  Widget build(BuildContext context) {
    double height = h;
    final appBar = AppBar(
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: back),
    );

    height -=
        (MediaQuery.of(context).padding.top + appBar.preferredSize.height);
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(height: height),
              Image.asset('images/image/sleep.png', width: 200, height: 200),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Dizzy and tired?',
            style: GoogleFonts.barlowCondensed(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            //style: Theme.of(context).textTheme.title,
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Emmy got you covered',
              maxLines: 4,
              //style: Theme.of(context).textTheme.body1,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
