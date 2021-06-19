import 'package:eco_ambassadeur/pages/home.dart';
import 'package:flutter/material.dart';

import '../elevated_button.dart';

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion"),
        elevation: 0,
        actions: [
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        children: [
          SizedBox(height: 70,),
          TextField(
            decoration: InputDecoration(
              hintText: "Email"
            ),

          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              hintText: "Mot de passe"
            ),

          ),
          SizedBox(height: 50,),
          elevatedButton(
              context,
                  () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              'Connexion'
          ),
        ],
      ),
    );
  }
}
