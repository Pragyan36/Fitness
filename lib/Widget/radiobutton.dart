import 'package:flutter/material.dart';

class RadioButtongoal extends StatefulWidget {
  final int value;
  final String label;
  const RadioButtongoal({super.key, required this.label, required this.value});

  @override
  State<RadioButtongoal> createState() => _RadioButtongoalState();
}

class _RadioButtongoalState extends State<RadioButtongoal> {
  int selectedValue = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Radio(
                        value: widget.value,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: Colors
                            .blue, // Change this color to the desired border color
                        focusColor: Colors.blue,
                        hoverColor: Colors.blue,
                        groupValue: selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            selectedValue =
                                selectedValue == value ? -1 : value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.label),
                  )
                ],
              )
              // Padding(
              //   padding: const EdgeInsets.only(top: 40.0, left: 30),
              //   child: Container(
              //     width: 70,
              //     height: 100,
              //     child: Text("Daily"),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0),
              //   child: Container(
              //     width: 20,
              //     height: 40,
              //     child: Radio(
              //       value: 0,
              //       groupValue: selectedValue,
              //       onChanged: (value) {},
              //     ),
              //   ),
              // ),
            ],
          ),
        )
      ],
    );
  }
}
