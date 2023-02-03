import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://img.freepik.com/free-photo/male-beauty-concept-portrait-fashionable-young-man-with-stylish-haircut-wearing-trendy-suit-posing-black-studio-background_155003-21656.jpg?w=2000&t=st=1675397959~exp=1675398559~hmac=9c67d18615fa35e995ce1150a30acf7612be2c5c803cbf61dff625be8ea23849";
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              // margin: EdgeInsets.zero,
              child:  UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("sadat mahmud",
                style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                 
                ),
                ),
                accountEmail: Text("sadatmahmud1@outlook.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
              ListTile(
                leading: Icon(CupertinoIcons.home,
                color: Colors.white,
                ),
                title: Text("Home",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.white)
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                title: Text("Profile",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.white)
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail,
                color: Colors.white,
                ),
                title: Text("Email me",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.white)
                ),
              )
          ],
        ),
      ),
    );
  }
}