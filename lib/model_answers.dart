import 'package:bpharmacy/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'design_course/design_course_app_theme.dart';
import 'navigation_home_screen.dart';

class ModelAnswers extends StatelessWidget{
  const ModelAnswers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ModelAnswersState(),
    );
  }

}
class ModelAnswersState extends StatefulWidget{
  _ModelAnswerSate createState() => _ModelAnswerSate();
}

class _ModelAnswerSate extends State<ModelAnswersState> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    Widget getAppBarUI() {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 2.0),
        child: Row(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationHomeScreen())),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 26.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SPPU',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 0.2,
                      color: DesignCourseAppTheme.grey,
                    ),
                  ),
                  Text(
                    'B Pharmacy',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 0.27,
                      color: DesignCourseAppTheme.darkerText,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(right: 10.0),
              child: Image.asset('assets/design_course/userImage.png'),
            )
          ],
        ),
      );
    }

    return new Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      textColor: Colors.blue,
                      color: Colors.white,
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 12.0, bottom: 12.0,),
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                      ),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Search())),
                      child: new Text("Question paper"),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    new RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 12.0, bottom: 12.0,),
                      shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                      ),
                      onPressed: () {},
                      child: new Text("Answer paper"),
                    ),
                  ]),
            ),
            Expanded(
                child: Center(
                  child: Text('Model answer paper not available.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              // new Padding(
              //   padding: EdgeInsets.all(16.0),
              //   //padding: const EdgeInsets.all(9.0),
              //   child: InkWell(
              //     onTap: _paper1st,
              //     child: Container(
              //       width: 500.0,
              //       height: 60.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: const Color(0xfff4f4f4)),
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             left: 16.0, top: 16.0),
              //         child: Text(
              //           "PHARMACEUTICS – I – Oct 2017",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               color: DesignCourseAppTheme.grey,
              //               fontWeight: FontWeight.w900,
              //               fontStyle: FontStyle.italic,
              //               fontFamily: 'Poppins',
              //               fontSize: 18),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              //
              // new Padding(
              //   padding: EdgeInsets.all(16.0),
              //   //padding: const EdgeInsets.all(9.0),
              //   child: InkWell(
              //     onTap: _paper2nd,
              //     child: Container(
              //       width: 500.0,
              //       height: 60.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: const Color(0xfff4f4f4)),
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             left: 16.0, top: 16.0),
              //         child: Text(
              //           "PHARMACEUTICS-I -April 2017",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               color: DesignCourseAppTheme.grey,
              //               fontWeight: FontWeight.w900,
              //               fontStyle: FontStyle.italic,
              //               fontFamily: 'Poppins',
              //               fontSize: 18),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // new Padding(
              //   padding: EdgeInsets.all(16.0),
              //   //padding: const EdgeInsets.all(9.0),
              //   child: InkWell(
              //     onTap: _paper3rd,
              //     child: Container(
              //       width: 500.0,
              //       height: 60.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: const Color(0xfff4f4f4)),
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             left: 16.0, top: 16.0),
              //         child: Text(
              //           "PHARMACEUTICS – I – Oct 2016",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               color: DesignCourseAppTheme.grey,
              //               fontWeight: FontWeight.w900,
              //               fontStyle: FontStyle.italic,
              //               fontFamily: 'Poppins',
              //               fontSize: 18),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ),

          ],
        ),
      ),
    );

  }
}