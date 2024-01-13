import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSecondAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3) , (){
      setState(() {
        showSecondAnimation = true;
      });
    });

  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // address asset json lotti
            Lottie.asset(
              'assets/anim_lottie/anim_1.json',
              height: height * 0.40,
              width: width,
              fit: BoxFit.cover,
              repeat: false,
            ),
            const SizedBox(
              height: 100,
            ),
            if(showSecondAnimation) ...[
              Lottie.asset(
                'assets/anim_lottie/anim_2.json',
                height: height * 0.40,
                width: width,
                fit: BoxFit.fitWidth,
                repeat: true,
              ),
            ]



          ],
        ),
      ),
    );
  }
}
