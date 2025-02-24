import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.greenAccent,),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("asset/circledcircle.svg", height: 72, width: 72,color: Colors.white,),
              SizedBox(height: 16,),
              Text(
                "We are Beyond Banking",
                style: TextStyle(
                  color: const Color.fromARGB(255, 12, 70, 118),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 38,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  SvgPicture.asset("asset/cbn.svg",height: 24,),
                   Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: ' Licensed by the ',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 12, 70, 118),
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'CBN ',
                        style: TextStyle(
                      color: const Color.fromARGB(255, 12, 70, 118),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                      ),
                      TextSpan(
                        text: 'and insured by the ',
                        style: TextStyle(
                      color: const Color.fromARGB(255, 12, 70, 118),
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                    ),
                      ),
                      TextSpan(
                        text: '| NDIC',
                        style: TextStyle(
                      color: const Color.fromARGB(255, 12, 70, 118),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                        )
                    ])
                   ),
                 ],
               )
            ],
          ),
        ),
      ),
    );
  }
}
