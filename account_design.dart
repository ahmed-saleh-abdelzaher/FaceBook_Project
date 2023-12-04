import 'dart:html';
import 'package:flutter/material.dart';

class User_Account extends StatefulWidget {
  const User_Account({super.key});

  @override
  State<User_Account> createState() => _User_AccountState();
}

class _User_AccountState extends State<User_Account> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              ),
              height: 235,
              child: Image.asset('assets/images/wallpaper.jpg',),
            ),
            Positioned(
              right: 17,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.person_pin, color: Colors.white,),
                      ),
                  ),
                  SizedBox(height: 15,),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.camera_alt, color: Colors.black,),
                      )),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 150,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage("assets/images/ahmed.jpg"),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(onPressed: (){},
                  icon: Icon(Icons.camera_alt, color: Colors.black,),),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
