import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 140, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/32.png",
                  width: 35, height: 35), // adjust the size as needed
              SizedBox(width: 8), // add some space between the image and text
              Text("Filezy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide(
                              color: const Color.fromARGB(255, 0, 140, 255))),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        print('erty');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      onPressed: () {
                        print("ety");
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 140, 255)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Text(
                "Username or Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // add some space between the buttons and input zone
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 229, 229),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // add some space between the buttons and input zone
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 229, 229),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                    Icon(Icons.remove_red_eye),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 0, 140, 255)),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "----------------------------Or-------------------------",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 45,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Center(
                        child: Text(
                          "Login with Google",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Expanded(
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 0, 140, 255)),
                          child: Center(
                            child: Text(
                              "Login with Facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
