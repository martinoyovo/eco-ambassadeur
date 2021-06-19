import 'package:eco_ambassadeur/elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'connexion.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Eco Ambassadeur"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tous contre la pollution",
                style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 200,
            width: size.width*0.8,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      blurRadius: 3
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage("asset/3.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: 30,),
          elevatedButton(
              context,
                  () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Connexion()));
              },
              'Connexion'
          ),
          SizedBox(height: 30,),
          elevatedButton(
              context,
                  () {

              },
              'Inscription'
          ),
        ],
      ),
    );
  }
}
