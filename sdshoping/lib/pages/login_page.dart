import 'package:flutter/material.dart';
import 'package:sdshoping/pages/utils/myroutes.dart';
import 'package:sdshoping/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _fromkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_fromkey.currentState!.validate()){
     
     setState(() 
     {
      changedButton = true;
    }
    );
    await Future.delayed(const Duration(seconds: 1));
    // ignore: use_build_context_synchronously
    await Navigator.pushNamed(context, MyRoute.homeRoute);

    setState(() {
      changedButton = false;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      
      
        color: context.cardColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/security2.jpg",
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: context.canvasColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 34.0),
                child: Form(
                  key: _fromkey,
                
                  child: Column(
                     
                    children: [
                      
                            TextFormField(
                        decoration: const InputDecoration(
                        
                          hintText: "Enter Username",
                          labelText: "username",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 4, 144, 186)),
                          
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        style: const TextStyle(color: Color.fromARGB(255, 0, 229, 255)),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "password",
                          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 153, 173)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cannot be empty";
                          } else if (value.length < 6) {
                            return "password length should be atleast 6";
                          }
                          return null;
                        },
                        style: const TextStyle(color: Color.fromARGB(255, 0, 229, 255)),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Material(
                        elevation: 7,
                        color: context.canvasColor,
                        borderRadius:
                            BorderRadius.circular(changedButton ? 50 : 10),
                        child: InkWell(
                          
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changedButton ? 50 : 150,
                            height: changedButton ? 50 : 40,
                            alignment: Alignment.center,
                            child: changedButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 225, 255),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
