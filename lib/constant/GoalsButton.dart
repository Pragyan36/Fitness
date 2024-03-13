import 'package:flutter/material.dart';

class Goalsbutton extends StatefulWidget {
  final String title;
  final VoidCallback ontap;

  const Goalsbutton({super.key, required this.title, required this.ontap});

  @override
  State<Goalsbutton> createState() => _GoalsbuttonState();
}

class _GoalsbuttonState extends State<Goalsbutton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
