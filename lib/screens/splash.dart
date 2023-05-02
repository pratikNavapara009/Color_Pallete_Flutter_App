import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initialization() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "COLOR GENERTOR",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 1,color: Colors.white),
            ),
            // SizedBox(height: 20,),
            Image.asset("assets/images/splash.gif",height: 450,width: 450,),
          ],
        ),
      ),
    );
  }
}
