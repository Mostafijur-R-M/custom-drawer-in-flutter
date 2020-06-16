import 'dart:ui';

import 'package:buttoneffect/model/drawer_style_class.dart';
import 'package:flutter/material.dart';

Widget StylishDrawer(){
  return ClipPath(
    clipper: DrawerStyleClass(),
    child: Container(
      width: 300.0,
      height: 700.0,
      child: Stack(
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green
              ),
            ),
          ),
          Container(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://www.crictracker.com/wp-content/uploads/2019/10/Shakib-Al-Hasan-1-1.jpg'),
                        ),
                      ),
                    ),
                    Text('Sakib Al Hasan', style: TextStyle(color: Colors.white),)
                  ],
                ),
                SizedBox(height: 20.0),
                Divider(height: 0.5, color: Colors.white,),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('Home', style: TextStyle(color: Colors.white),),
                ),
                Divider(height: 0.5, color: Colors.white,),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('Home', style: TextStyle(color: Colors.white),),
                ),
                Divider(height: 0.5, color: Colors.white,),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('Home', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}