// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final int _numPages = 3;
//   final PageController _pageController = PageController(initialPage: 0);
//   int _currentPage = 0;

//   List<Widget> _buildPageIndicator() {
//     List<Widget> list = [];
//     for (int i = 0; i < _numPages; i++) {
//       list.add(i == _currentPage ? _indicator(true) : _indicator(false));
//     }
//     return list;
//   }

//   Widget _indicator(bool isActive) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 150),
//       margin: EdgeInsets.symmetric(horizontal: 8.0),
//       height: 8.0,
//       width: isActive ? 24.0 : 16.0,
//       decoration: BoxDecoration(
//         color: isActive ? Colors.white : Color(0xFF7B51D3),
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               stops: [0.1, 0.4, 0.7, 0.9],
//               colors: [
//                 Color(0xFF3594DD),
//                 Color(0xFF4563DB),
//                 Color(0xFF5036D5),
//                 Color(0xFF5B16D0),
//               ],
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 40.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Container(
//                   alignment: Alignment.centerRight,
//                   child: FlatButton(
//                     onPressed: () => print('Skip'),
//                     child: Text(
//                       'Skip',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 400.0,
//                   child: PageView(
//                     physics: ClampingScrollPhysics(),
//                     controller: _pageController,
//                     onPageChanged: (int page) {
//                       setState(() {
//                         _currentPage = page;
//                       });
//                     },
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'images/image/hand.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Connect people\naround the world',
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/image/circle.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Live your life smarter\nwith us!',
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               'Just say Emmy ',
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/image/audio.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Get a new experience\nof imagination',
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               'Improving the Social Experience .',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: _buildPageIndicator(),
//                 ),
//                 _currentPage != _numPages - 1
//                     ? Expanded(
//                         child: Align(
//                           alignment: FractionalOffset.bottomRight,
//                           child: FlatButton(
//                             onPressed: () {
//                               _pageController.nextPage(
//                                 duration: Duration(milliseconds: 500),
//                                 curve: Curves.ease,
//                               );
//                             },
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 Text(
//                                   'Next',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 22.0,
//                                   ),
//                                 ),
//                                 SizedBox(width: 10.0),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.white,
//                                   size: 30.0,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     : Text(''),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomSheet: _currentPage == _numPages - 1
//           ? Container(
//               height: 100.0,
//               width: double.infinity,
//               color: Colors.white,
//               child: GestureDetector(
//                 onTap: () => print('Get started'),
//                 child: Center(
//                   child: Padding(
//                     padding: EdgeInsets.only(bottom: 30.0),
//                     child: Text(
//                       'Get started',
//                       style: TextStyle(
//                         color: Color(0xFF5B16D0),
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           : Text(''),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:social_media/screens/auth_screen.dart';

import '../screens/home_screen.dart';

import '../onboarding/onboarding_0.dart';
import '../onboarding/onboarding_1.dart';
import '../onboarding/onboarding_2.dart';

import '../onboarding/background_with_footers.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboard';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);

    //Height of the container occupied by the image which is half of the screen
    final imageSize = mediaquery.size.height / 2;

    ///called when [icon] arrow_back is pressed on screens 1 and 2
    void _movePageBackwards() {
      if (_currentPage != 0) {
        _currentPage--;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 150),
          curve: Curves.linear,
        );
      }
    }

    final _onboardingScreens = [
      Onboarding0(imageSize),
      Onboarding1(imageSize, _movePageBackwards),
      Onboarding2(imageSize, _movePageBackwards),
    ];

    //onPageChanged
    void _pageScrolled(int page) {
      setState(() {
        _currentPage = page;
      });
    }

    ///{Button} [CONTINUE] clicked
    void _movePageForward() {
      if (_currentPage != 2) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          curve: Curves.linear,
          duration: Duration(milliseconds: 150),
        );
      } else {
        Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
      }
    }

    //Builder widgets for the navigation indicators
    Widget circleBar(int i) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 150),
        width: 8,
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 8,
        decoration: BoxDecoration(
          color: _currentPage == i ? Colors.black : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
      );
    }

    //page Builder.. main Widget**********************
    final page = BackgroundWithFooter(
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (ctx, index) => _onboardingScreens[index],
        itemCount: _onboardingScreens.length,
        onPageChanged: (page) => _pageScrolled(page),
      ),
    );

    //return Value
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        page,
        Positioned(
            bottom: 150,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[for (int i = 0; i < 3; i++) circleBar(i)],
            )),
        Positioned(
          bottom: 70,
          child: RaisedButton(
            // color: Colors.pink,
            onPressed: _movePageForward,
            child: Text(_currentPage == _onboardingScreens.length - 1
                ? 'GET STARTED'
                : 'CONTINUE'),
          ),
        ),
      ],
    );
  }
}
