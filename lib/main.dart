import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mysocial/ui/route.dart';
import 'package:mysocial/utils/constant/colors.dart';
import 'package:mysocial/utils/constant/route_path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Propelld',
        //     navigatorObservers: [
        //     locator<AnalyticsService>().getAnalyticsObserver(),
        // ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          //iconTheme: IconThemeData(color: kDarkBlue),
          appBarTheme: AppBarTheme(color: BackGrondColor, elevation: 0),
          scaffoldBackgroundColor: BackGrondColor,
        ),
        initialRoute: RoutePaths.Splash,
        onGenerateRoute: Routers.generateRoute,
      ),
    );
  }
}
