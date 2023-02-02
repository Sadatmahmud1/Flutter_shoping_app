import 'package:flutter/material.dart';
import 'package:sdshoping/pages/myroutes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_page1.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(247, 49, 0, 1)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 34.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Your Username",
                        labelText: "username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    InkWell(

                      onTap: () async{
                        setState(() {
                          changedButton = true;
                         
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),

                        width: changedButton ? 50 : 150,
                        height: changedButton ? 50 : 40,
                    
                        alignment: Alignment.center,
                        child: changedButton ?Icon(Icons.done,
                        color:Colors.white,
                        ):

                        Text("Login",
                        style: TextStyle(color: Colors.white,
                        fontSize: 24,
                        fontWeight:FontWeight.bold,
                        ),
                                  
                        ),
                        decoration: BoxDecoration( color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular( changedButton ? 50 : 10)
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoute.homeRoute);
                    //   },
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(
                    //         fontSize: 23, fontWeight: FontWeight.bold),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     elevation: 8.0,
                    //     minimumSize: Size(150, 45),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(10.0)),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
