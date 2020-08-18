import 'package:flutter/material.dart';
import 'package:flutter_app_wow/models/wowclass.dart';
import 'package:flutter_app_wow/utils/strings.dart';

class WowClassList extends StatelessWidget {
  static List<WowClass> allWowClasses;

  @override
  Widget build(BuildContext context) {
    allWowClasses = prepareAllInformations();

    return Scaffold(
      appBar: AppBar(
        title: Text("World of Warcraft"),
      ),
      body: prepareList(),
    );
  }

  static List<WowClass> prepareAllInformations() {
    List<WowClass> WowClasses = [];

    for (int i = 0; i < 12; i++) {
      String smallImage = Strings.CLASS_NAMES[i].toLowerCase() + ".png";
      String bigImage = Strings.CLASS_NAMES[i].toLowerCase() + "1" + ".jpg";

      WowClass addingClass = WowClass(
          Strings.CLASS_NAMES[i],
          Strings.CLASS_TYPE[i],
          Strings.CLASS_DETAILS[i],
          smallImage,
          bigImage);
      WowClasses.add(addingClass);
    }

    return WowClasses;
  }

  Widget prepareList() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return justSimpleClassWidget(context, index);
      },
      itemCount: allWowClasses.length,
    );
  }

  Widget justSimpleClassWidget(BuildContext context, int index) {
    WowClass instantAddingClass = allWowClasses[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/classDetails/$index"),
          leading: Image.asset(
            "images/" + instantAddingClass.classSmallImage,
            width: 64,
            height: 64,
          ),
          title: Text(
            instantAddingClass.className,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
        ),
      ),
    );
  }
}
