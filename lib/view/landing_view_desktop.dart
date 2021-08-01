import 'package:flutter/material.dart';
import 'package:sehatterus/resource/color_resources.dart';
import 'package:sehatterus/resource/string_resources.dart';
import 'package:sehatterus/navbar.dart';

class LandingViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Navbar.isDesktop(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 64.0, left: 48.0, right: 48.0, bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringResource.header, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 64, fontWeight: FontWeight.w700),),
                    SizedBox(height: 48.0,),
                    Text(StringResource.paragraph, style: TextStyle(color: ColorsResources.primary_text_color, fontSize: 22),),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RaisedButton(
                        textColor: Colors.white,
                        color: ColorsResources.primary_color,
                        child: Text("Periksa Gejala Penyakit"),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        onPressed: (){},
                      ),
                        SizedBox(width: 12.0),
                        RaisedButton(
                          textColor: Colors.white,
                          color: ColorsResources.primary_color,
                          child: Text("Cek Tips Menjaga Kesehatan"),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/2.3,
                child: Image.asset("assets/images/logo.png", fit: BoxFit.fitWidth,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}