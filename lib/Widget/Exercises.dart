import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  final  String title;
  final String time;
  final void  Function() ontap;
  const Exercises({super.key, required this.time, required this.title, required this.ontap});

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
                 padding: const EdgeInsets.only(top:0.0, left: 15,right: 15),
                 child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:0.0),
                                  child: Text(widget.time, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),),
                                ),
                                SizedBox(
                              width: 20,
                            ),
                            Text(widget.title,style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                              ],
                            ),
                            
                            
                            
                                         
                            ]
                          ),
                          Icon(Icons.arrow_drop_up)
                        ],
                      ),
                      Divider(thickness: 0.5,
                      
      
                    indent: 70,
                      color: Colors.grey,)
                    ],
                  ),
                 
                 ),
               ),
    );
  }
}