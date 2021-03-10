import 'package:admob_flutter/admob_flutter.dart';
import 'package:bpharmacy/fifth_sem_subjects/PHARMACOLOGY-II.dart';
import 'package:bpharmacy/first_sem_subjects/pharmaceutics-1.dart';
import 'package:bpharmacy/second_sem_subjects/DOSAGE%20FORM%20DESIGN.dart';
import 'package:bpharmacy/second_sem_subjects/HUMAN%20ANATOMY%20&%20PHYSIOLOGY-II.dart';
import 'package:bpharmacy/second_sem_subjects/PHARMACEUTICAL%20ANALYSIS-I.dart';
import 'package:bpharmacy/second_sem_subjects/PHARMACEUTICAL%20ORGANIC%20CHEMISTRY-II.dart';
import 'package:bpharmacy/second_sem_subjects/PHARMACEUTICS-%20II.dart';
import 'package:bpharmacy/second_sem_subjects/PHARMACOGNOSY.dart';
import 'package:bpharmacy/sixth_sem_subjects/BIOORGANIC%20CHEMISTRY%20&%20DRUG%20DESIGN.dart';
import 'package:bpharmacy/sixth_sem_subjects/INDUSTRIAL%20PHARMACY-II.dart';
import 'package:bpharmacy/sixth_sem_subjects/MEDICINAL%20CHEMISTRY-II.dart';
import 'package:bpharmacy/sixth_sem_subjects/NATURAL%20PRODUCT%20CHEMISTRY.dart';
import 'package:bpharmacy/sixth_sem_subjects/PHARMACEUTICAL%20ANALYSIS-IV.dart';
import 'package:bpharmacy/sixth_sem_subjects/PHARMACEUTICAL%20BIOTECHNOLOGY.dart';
import 'package:bpharmacy/sixth_sem_subjects/PHARMACOLOGY-III.dart';
import 'package:bpharmacy/subjects/fifth_sem.dart';
import 'package:bpharmacy/subjects/first_sem.dart';
import 'package:bpharmacy/subjects/fourth_sem.dart';
import 'package:bpharmacy/subjects/second_sem.dart';
import 'package:bpharmacy/subjects/sixth_sem.dart';
import 'package:bpharmacy/subjects/third_sem.dart';
import 'package:bpharmacy/third_sem_subjects/PHARMACEUTICAL%20BIOCHEMISTRY.dart';
import 'package:bpharmacy/third_sem_subjects/PHARMACEUTICAL%20MICROBIOLOGY.dart';
import 'package:bpharmacy/third_sem_subjects/PHARMACEUTICAL%20ORGANIC%20CHEMISTRY-III.dart';
import 'package:bpharmacy/third_sem_subjects/PHARMACOGNOSY%20&%20PHYTOCHEMISTRY-I.dart';
import 'package:bpharmacy/third_sem_subjects/PHARMACOLOGY-I.dart';
import 'package:bpharmacy/third_sem_subjects/PHYSICAL%20PHARMACEUTICS-I.dart';
import 'package:flutter/material.dart';
import 'AdService.dart';
import 'design_course/design_course_app_theme.dart';
import 'fifth_sem_subjects/ACTIVE PHARMACEUTICAL INGREDIENTS TECHNOLOGY.dart';
import 'fifth_sem_subjects/ANALYTICAL PHARMACOGNOSY & EXTRACTION TECHNOLOGY.dart';
import 'fifth_sem_subjects/INDUSTRIAL PHARMACY I.dart';
import 'fifth_sem_subjects/MEDICINAL CHEMISTRY-I.dart';
import 'fifth_sem_subjects/PHARMACEUTICAL ANALYSIS-III.dart';
import 'fifth_sem_subjects/PHARMACEUTICAL BUSINESS MANAGEMENT & DISASTER MANAGEMENT.dart';
import 'first_sem_subjects/COMMUNICATION AND SOFT SKILL DEVELOPMENT.dart';
import 'first_sem_subjects/COMPUTER APPLICATIONS & BIOSTATISTICS.dart';
import 'first_sem_subjects/HUMAN ANATOMY & PHYSIOLOGY-I.dart';
import 'first_sem_subjects/MODERN DISPENSING PRACTICES.dart';
import 'first_sem_subjects/PHARMACEUTICAL INORGANIC CHEMISTRY.dart';
import 'first_sem_subjects/PHARMACEUTICAL ORGANIC CHEMISTRY-I.dart';
import 'fourth_sem_subjects/PATHOPHYSIOLOGY & CLINIICAL BIOCHEMISTRY.dart';
import 'fourth_sem_subjects/PHARMACEUTICAL ANAYLSIS-II.dart';
import 'fourth_sem_subjects/PHARMACEUTICAL ENGINEERING.dart';
import 'fourth_sem_subjects/PHARMACOGNOSY & PHYTOCHEMISTRY-II.dart';
import 'fourth_sem_subjects/PHYSICAL PHARMACEUTICS-II.dart';
import 'main.dart';

void main() {
  runApp(MyHomePageRoute());
}

class MyHomePageRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
      routes: {
       '_firstsem': (context) => FirstSem(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  CategoryType categoryType = CategoryType.ui;


  Widget getNews() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'News',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12.0),
          //padding: const EdgeInsets.all(9.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 500.0,
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                                    child: Text("It's a very worrying time for all. I hope you are all in good health, and the Coronavirus pandemic will soon be over.",textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(000, 000, 000, 1.0),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(),
                      getSearchBarUI(),
                      getNews(),
                      getCategoryUI(),
                      Container(
                        child: getPopularCourseUI(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              new RaisedButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                ),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstSem())),
                child: new Text("2015 pattern"),
              ),
              const SizedBox(
                width: 16,
              ),
              new RaisedButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                ),
                textColor: Colors.blue,
                color: Colors.white,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("B Pharmacy"),
                        content: Text("Model papers not available at this moment."),
                        actions: [],
                      );
                    },
                  );
                },
                child: new Text("2013 pattern"),
              ),
              const SizedBox(
                width: 16,
              ),
              new RaisedButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                ),
                textColor: Colors.blue,
                color: Colors.white,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("B Pharmacy"),
                        content: Text("Model papers not available at this moment."),
                        actions: [],
                      );
                    },
                  );
                },
                child: new Text("M.pharm 2013"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0, right: 0,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Select Your Semester',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(top: 2.0, left: 0, right: 0,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           new Container(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FirstSem())),
             child: SemRow(),
          ),
          ),
            new Container(
              child: InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSem())),
                child: SemRow2(),
              ),
            ),
          new Container(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdSem())),
              child: SemRow3(),
            ),
          ),
          new Container(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FourthSem())),
              child: SemRow4(),
            ),
          ),
          new Container(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FifthSem())),
              child: SemRow5(),
            ),
          ),
          new Container(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SixthSem())),
              child: SemRow6(),
            ),
          ),
          ],
        ),
      ),
        ],
      ),
    );
  }


   Widget getSearchBarUI() {
     return Padding(
       padding: const EdgeInsets.only(top: 8.0, left: 18),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             width: MediaQuery.of(context).size.width * 0.90,
             height: 70,
             child: Padding(
               padding: const EdgeInsets.only(top: 8, bottom: 8),
               child: Container(
                 decoration: BoxDecoration(
                   color: HexColor('#F8FAFB'),
                   borderRadius: const BorderRadius.only(
                     bottomRight: Radius.circular(13.0),
                     bottomLeft: Radius.circular(13.0),
                     topLeft: Radius.circular(13.0),
                     topRight: Radius.circular(13.0),
                   ),
                 ),
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Container(
                         padding: const EdgeInsets.only(left: 16, right: 16),
                         child: TextFormField(
                           focusNode: FocusNode(),
                           enableInteractiveSelection: false,
                           style: TextStyle(
                             fontFamily: 'WorkSans',
                             fontWeight: FontWeight.bold,
                             fontSize: 16,
                             color: DesignCourseAppTheme.nearlyBlue,
                           ),
                           keyboardType: TextInputType.text,
                           decoration: InputDecoration(
                             labelText: 'Search for papers',
                             border: InputBorder.none,
                             helperStyle: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 16,
                               color: HexColor('#B9BABC'),
                             ),
                             labelStyle: TextStyle(
                               fontWeight: FontWeight.w600,
                               fontSize: 16,
                               letterSpacing: 0.2,
                               color: HexColor('#B9BABC'),
                             ),
                           ),
                           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Search())),
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 60,
                       height: 60,
                       child: Icon(Icons.search, color: HexColor('#B9BABC')),
                     )
                   ],
                 ),
               ),
             ),
           ),
          SizedBox(),
         ],
       ),
     );
   }

   Widget getAppBarUI() {
     return Padding(
       padding: const EdgeInsets.only(top: 8.0, left: 60.0),
       child: Row(
         children: <Widget>[
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
 }

enum CategoryType {
  ui,
  coding,
  basic,
}
class SemRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: Alignment.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('First Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 118.0,
      margin: new EdgeInsets.only(right: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}


class SemRow2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Question Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('Second Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}


class SemRow3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Question Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('Third Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}

class SemRow4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Question Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('Fourth Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}


class SemRow5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Question Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('Fifth Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );
  }
}

class SemRow6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
          left: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage('assets/design_course/interFace2.png'),
        height: 70.0,
        width: 70.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    Widget _planetValue({String value, String image}) {
      return new Row(
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text('30 Question Papers', style: regularTextStyle),
          ]
      );
    }


    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text('Sixth Semester', style: headerTextStyle),
          new Container(height: 10.0),
          new Text('SPPU', style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xffF8FAFB)
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: 'QP',
                      image: 'assets/design_course/interFace2.png')
              )
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
        color: new Color(0xFFF8FAFB),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        )
    );

    }
  }

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListSearch(),
      routes: {
        "/Pharmaceutics- I": (context) => Pharmaceutics1(),
        "/Modern Dispensing Practices": (context) => ModernDispensingPractices(),
        "/Pharmaceutical Inorganic Chemistry": (context) => PharmaceuticalInorganicChemistry(),
        "/Pharmaceutical Organic Chemistry-I": (context) => PharmaceuticalOrganicChemistryI(),
        "/Human Anatomy & Physiology-I": (context) => HumanAnatomyAndPhysiology(),
        "/Communication and Soft Skill Development": (context) => CommunicationAndSoftSkillDev(),
        "/Computer Applications & Biostatistics (2008 Pattern)": (context) => ComputerApplicationsAndBiostatistics(),
        "/Pharmaceutics- II": (context) => Pharmaceutics_II(),
        "/Dosage Form Design": (context) => DosageFromDesign(),
        "/Pharmaceutical Analysis-I": (context) => PharmaceuticalAnalysis_I(),
        "/Pharmaceutical Organic Chemistry-II": (context) => PharmaceuticalOrganicChemistryII(),
        "/Human Anatomy & Physiology-II": (context) => HumanAnatomyAndPhysiology_II(),
        "/Pharmacognosy": (context) => Pharmacognosy(),
        "/Physical Pharmaceutics-I": (context) => PhysicalPharmaceutics_I(),
        "/Pharmaceutical Microbiology": (context) => PharmaceuticalMicrobiology(),
        "/Pharmaceutical Biochemistry": (context) => PharmaceuticalBiochemistry(),
        "/Pharmaceutical Organic Chemistry-III": (context) => PharmaceuticalOrganicChemistry_III(),
        "/Pharmacology-I": (context) => Pharmacology_I(),
        "/Pharmacognosy & Phytochemistry-I": (context) => PharmacognosyAndPhytochemistry(),
        "/Physical Pharmaceutics-II": (context) => PhysicalPharmaceutics_II(),
        "/Pathophysiology & Cliniical Biochemistry": (context) => PathophysiologyAndClinicalBiochemistry(),
        "/Pharmaceutical Organic Chemistry-IV": (context) => PharmaceuticalOrganicChemistry_III(),
        "/Pharmaceutical Anaylsis-II": (context) => PharmaceuticalAnaylsis_II(),
        "/Pharmacognosy & Phytochemistry-II" : (context) => PharmacognosyAndPhytochemistryII(),
        "/Pharmaceutical Engineering": (context) => PharmaceuticalEngineering(),
        "/Industrial Pharmacy I": (context) => IndustrialPharmacy(),
        "/Pharmaceutical Analysis-III": (context) => PharmaceuticalAnalysis_III(),
        "/Medicinal Chemistry-I": (context) => MedicinalChemistry_I(),
        "/Pharmacology-II" : (context) => Pharmacology_II(),
        "/Analytical Pharmacognosy & Extraction Technology": (context) => AnalyticalPharmacognosyAndExtractionTechnology(),
        "/Pharmaceutical Business Management & Disaster Management": (context) => PharmaceuticalBusinessManagementAndDisaster(),
        "/Active Pharmaceutical Ingredients Technology": (context) => ActivePharmaceuticalIngredientsTechnology(),
        "/Industrial Pharmacy-II": (context) => IndustrialPharmacyII(),
        "/Pharmaceutical Analysis-IV": (context) => PharmaceuticalAnalysisIV(),
        "/Medicinal Chemistry-II": (context) => MedicinalChemistry(),
        "/Pharmacology-III": (context) => Pharmacology_III(),
        "/Natural Product Chemistry": (context) => NaturalProductChemistry(),
        "/Bioorganic Chemistry & Drug Design": (context) => BioOrganicChemistryAndDrugDesign(),
        "/Pharmaceutical Biotechnology": (context) => PharmaceuticalBiotechnology(),
        "/1st Semester": (context) => FirstSem(),
        "/2nd Semester": (context) => SecondSem(),
        "/3rd Semester": (context) => ThirdSem(),
        "/4th Semester": (context) => FourthSem(),
        "/5th Semester": (context) => FifthSem(),
        "/6th Semester": (context) => SixthSem(),
      },
    );
  }

}

class ListSearch extends StatefulWidget {
  const ListSearch({Key key}) : super(key: key);
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {

  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Pharmaceutics- I",
    "Modern Dispensing Practices",
    "Pharmaceutical Inorganic Chemistry",
    "Pharmaceutical Organic Chemistry-I",
    "Human Anatomy & Physiology-I",
    "Communication and Soft Skill Development",
    "Computer Applications & Biostatistics (2008 Pattern)",
    "Pharmaceutics- II",
    "Dosage Form Design",
    "Pharmaceutical Analysis-I",
    "Pharmaceutical Organic Chemistry-II",
    "Human Anatomy & Physiology-II",
    "Pharmacognosy",
    "Physical Pharmaceutics-I",
    "Pharmaceutical Microbiology",
    "Pharmaceutical Biochemistry",
    "Pharmaceutical Organic Chemistry-III",
    "Pharmacology-I",
    "Pharmacognosy & Phytochemistry-I",
    "Physical Pharmaceutics-II",
    "Pathophysiology & Cliniical Biochemistry",
    "Pharmaceutical Organic Chemistry-IV",
    "Pharmaceutical Anaylsis-II",
    "Pharmacognosy & Phytochemistry-II",
    "Pharmaceutical Engineering",
    "Industrial Pharmacy I",
    "Pharmaceutical Analysis-III",
    "Medicinal Chemistry-I",
    "Pharmacology-II",
    "Analytical Pharmacognosy & Extraction Technology",
    "Pharmaceutical Business Management & Disaster Management",
    "Active Pharmaceutical Ingredients Technology",
    "Industrial Pharmacy-II",
    "Pharmaceutical Analysis-IV",
    "Medicinal Chemistry-II",
    "Pharmacology-III",
    "Natural Product Chemistry",
    "Bioorganic Chemistry & Drug Design",
    "Pharmaceutical Biotechnology",
    "1st Semester",
    "2nd Semester",
    "3rd Semester",
    "4th Semester",
    "5th Semester",
    "6th Semester",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(),
                      getSearchBarUI(),
                      getSearchResalt()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())),
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
  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          controller: _textController,
                          autofocus:true,
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: DesignCourseAppTheme.nearlyBlack,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onChanged: onItemChanged,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget getSearchResalt() {
    return Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.all(12.0),
                        children: newDataList.map((data) {
                          var index = newDataList.indexOf(data);
                          return ListTile(
                            title: Text(data),
                            onTap: () => Navigator.pushNamed(context, '/${newDataList[index]}'),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
