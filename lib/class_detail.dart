import 'package:flutter/material.dart';
import 'package:flutter_app_wow/class_list.dart';
import 'package:flutter_app_wow/models/wowclass.dart';

class WowClassDetail extends StatelessWidget {
  int getIndex;
  WowClass chooseClass;

  WowClassDetail(this.getIndex);

  @override
  Widget build(BuildContext context) {
    chooseClass = WowClassList.allWowClasses[getIndex];

    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + chooseClass.classBigImage,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(chooseClass.className + " Details"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  chooseClass.classDetail,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
