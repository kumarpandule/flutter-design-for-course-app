import 'package:bpharmacy/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share/share.dart';

import 'content.dart';

class InviteFriendShare extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();

}

class _InviteFriendState extends State<InviteFriendShare> {

  WidgetBuilder builder = buildProgressIndicator;

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
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
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/inviteImage.png'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Please Rate This App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'If you like this app, Please take a little bit of\n your time to review it!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
      RateMyAppBuilder(
        builder: builder,
        onInitialized: (context, rateMyApp) {
          setState(() => builder = (context) => ContentWidget(rateMyApp: rateMyApp));
          rateMyApp.conditions.forEach((condition) {
            if (condition is DebuggableCondition) {
              print(condition.valuesAsString); // We iterate through our list of conditions and we print all debuggable ones.
            }
          });

          print('Are all conditions met ? ' + (rateMyApp.shouldOpenDialog ? 'Yes' : 'No'));

          if (rateMyApp.shouldOpenDialog) {
            rateMyApp.showRateDialog(context);
          }
        },
      ),

            ],
          ),
        ),
      ),
    );
  }
  static Widget buildProgressIndicator(BuildContext context) => const Center(child: CircularProgressIndicator());
}




/* import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'content.dart';


/// First plugin test method.
void main() {
  WidgetsFlutterBinding.ensureInitialized(); // This allows to use async methods in the main method without any problem.
  runApp(const RateMyAppTestApp());
}

/// The body of the main Rate my app test widget.
class RateMyAppTestApp extends StatefulWidget {
  /// Creates a new Rate my app test app instance.
  const RateMyAppTestApp();

  @override
  State<StatefulWidget> createState() => _RateMyAppTestAppState();
}

/// The body state of the main Rate my app test widget.
class _RateMyAppTestAppState extends State<RateMyAppTestApp> {
  /// The widget builder.
  WidgetBuilder builder = buildProgressIndicator;

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Rate my app !'),
      ),
      body: RateMyAppBuilder(
        builder: builder,
        onInitialized: (context, rateMyApp) {
          setState(() => builder = (context) => ContentWidget(rateMyApp: rateMyApp));
          rateMyApp.conditions.forEach((condition) {
            if (condition is DebuggableCondition) {
              print(condition.valuesAsString); // We iterate through our list of conditions and we print all debuggable ones.
            }
          });

          print('Are all conditions met ? ' + (rateMyApp.shouldOpenDialog ? 'Yes' : 'No'));

          if (rateMyApp.shouldOpenDialog) {
            rateMyApp.showRateDialog(context);
          }
        },
      ),
    ),
  );

  /// Builds the progress indicator, allowing to wait for Rate my app to initialize.
  static Widget buildProgressIndicator(BuildContext context) => const Center(child: CircularProgressIndicator());
}
*/
