import 'package:flutter/material.dart';
import 'package:sehatterus/resource/color_resources.dart';
import 'package:sehatterus/resource/string_resources.dart';

class Navbar {
  static isMobile(){
    return AppBar(
      actionsIconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(StringResource.logoName, style: TextStyle(color: ColorsResources.logo_color, fontWeight: FontWeight.w800),),
    );
  }

  static isDesktop(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(StringResource.logoName, style: TextStyle(color: ColorsResources.logo_color, fontWeight: FontWeight.w800),),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Row(
            children: [
              FlatButton(
                child: Text(StringResource.homeMenu),
                onPressed: (){},
              ),
              FlatButton(
                child: Text(StringResource.informasi),
                onPressed: (){},
              ),
              FlatButton(
                child: Text(StringResource.tips),
                onPressed: (){},
              ),
            ],
          ),
        )
      ],
    );
  }
}