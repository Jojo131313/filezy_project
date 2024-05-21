import 'package:filezy_project/features/home/screens/acceuil.dart';
import 'package:filezy_project/features/login/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    Duration duration = Duration(milliseconds: 100);

    method();
    // Future.delayed(duration, method);

    super.initState();
  }

  void method() async {
// Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    int counter = prefs.getInt('counter') ?? 0;

    counter++;

    await prefs.setInt('counter', counter);

    print(counter);

    navigateHome(counter == 1);
  }

  void navigateHome(bool firstNav) {
    if (firstNav) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Acceuil()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 140, 255),
        body: Center(
          child: Container(
            margin: EdgeInsets.only(right: 8),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    "assets/icons/folder.png",
                    width: 100,
                  ),
                ),
                Text(
                  "Filezy ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                  ),
                ),
                SizedBox(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
