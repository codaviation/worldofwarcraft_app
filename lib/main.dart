import 'package:flutter/material.dart';
import 'package:flutter_app_wow/class_detail.dart';
import 'package:flutter_app_wow/class_list.dart';
import 'package:splashscreen/splashscreen.dart';

void main(){

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.black,
      image: Image.asset("images/wow2.gif"),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}




class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "World of Warcraft Class List",
      debugShowCheckedModeBanner: false,

      initialRoute: "/classList",

      routes: {
        "/classList" : (context) => WowClassList(),
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathGuys = settings.name.split("/");
        if(pathGuys[1]== 'classDetails'){
          return MaterialPageRoute(builder: (context) => WowClassDetail(int.parse(pathGuys[2])));
        }
        return null;
      },

      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    home: WowClassList(),
    );
  }
}
