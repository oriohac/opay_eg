import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeIcons extends StatelessWidget {
  final String iconName;
  final bool isCircle;
  final String tittle;
  const HomeIcons({
    super.key,
    required this.isCircle,
    required this.tittle,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          isCircle
          ?Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 210, 240, 225),),
            child: Center(child: SvgPicture.asset(iconName, color: const Color.fromARGB(255, 4, 177, 93),width: 24, height: 24,)),
          )
          :Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 210, 240, 225),),
            child: Center(child: SvgPicture.asset(iconName, color: const Color.fromARGB(255, 4, 177, 93), width: 24, height: 24,)),
          ),
          SizedBox(height: 8,),
          Text(tittle, style: 
          isCircle
          ? TextStyle(fontSize: 12)
          : TextStyle(fontSize: 14),)
        ],
      ),
    );
  }
}