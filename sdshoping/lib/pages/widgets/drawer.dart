import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-6/329037305_1192720864686930_8886675273932171257_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFmP2aWZAEFqCgfXHIF0rXO_EnZfVLfJrr8Sdl9Ut8muj63bZAKnG2x3Dy_6JwJd2mFrWFTbLuAG08bnVPpc62S&_nc_ohc=Bf1GShv2gokAX8Xsp2m&_nc_ht=scontent.fdac138-1.fna&oh=00_AfCzVCwI9sLwoh5kbDzPt7Zb4oieP17AEpFhswtDIGX_iw&oe=63EFD0BB";
    return Drawer(
      
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
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
                color: Colors.black,
                ),
                title: Text("Home",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.black)
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.black,
                ),
                title: Text("Profile",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.black)
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail,
                color: Colors.black,
                ),
                title: Text("Email me",
                textScaleFactor: 1.2
                ,
                
                style: TextStyle(color: Colors.black)
                ),
              )
          ],
        ),
      ),
    );
  }
}