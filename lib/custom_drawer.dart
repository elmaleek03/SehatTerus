import 'package:flutter/material.dart';
import 'package:sehatterus/resource/color_resources.dart';
import 'package:sehatterus/resource/string_resources.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text(StringResource.homeMenu),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text(StringResource.informasi),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text(StringResource.tips),
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}