import 'package:bpharmacy/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();

}

class _AboutState extends State<About> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 100,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/design_course/userImage.png'),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'B.Pharmacy All Model Answers Papers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'B.Pharmacy All Model Answer Papers by kumar pandule is a decent app for papers of Savitribai Phule Pune University.It was a small, But fine selection of model answer papers.\nThe app has other features and good looking UI,and  More.The app has a few bugs.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(4.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: const Offset(4, 4),
                              blurRadius: 8.0),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                InkWell(
                                  onTap: () async {
                                    ShearButton();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      'Share',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void ShearButton(){
    Share.share('D Pharmacy All Model Answer Papers\n \nCheck out the D.Pharmacy application link -\n \nhttps://play.google.com/store/apps/details?id=com.toxic.bpharmacy', subject: 'D Pharmacy All Model Answer Papers');
  }
}
