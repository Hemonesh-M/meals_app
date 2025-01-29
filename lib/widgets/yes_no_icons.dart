import 'package:flutter/material.dart';

class YesNoIcons extends StatelessWidget{
  const YesNoIcons({super.key,required this.label,required this.isTrue });
  final String label;
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    IconData icon=Icons.medical_services_sharp;
    if(isTrue) icon=Icons.no_meals;
    return Row(
      children: [
        Icon(icon,size:17 ,color: Colors.white,),
        const SizedBox(width: 5,),
        Text(label,style: const TextStyle(color: Colors.white),),
      ],
    );
  }
}