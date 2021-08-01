import 'package:flutter/material.dart';
import 'package:sehatterus/resource/color_resources.dart';
import 'package:sehatterus/custom_drawer.dart';
import 'package:sehatterus/resource/string_resources.dart';
import 'package:sehatterus/navbar.dart';

class LandingViewMobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Navbar.isMobile(),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 18.0, bottom: 10.0, right: 24.0, left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(StringResource.header, textAlign: TextAlign.center, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 36, fontWeight: FontWeight.w700),),
              SizedBox(height: 24.0,),
              Container(
                  height: MediaQuery.of(context).size.width/1,
                  padding: EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Image.asset("assets/images/logo.png", fit: BoxFit.fitHeight,)
              ),
              SizedBox(height: 24.0,),
              Text(StringResource.paragraph, textAlign: TextAlign.center, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 14),),
              SizedBox(height: 10.0),
              RaisedButton(
                textColor: Colors.white,
                color: ColorsResources.primary_color,
                child: Text("Periksa Gejala Penyakit"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                onPressed: (){},
              ),
              SizedBox(height: 10.0),
              RaisedButton(
                textColor: Colors.white,
                color: ColorsResources.primary_color,
                child: Text("Cek Tips Menjaga Kesehatan"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}