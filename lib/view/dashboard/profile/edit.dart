
import 'package:fintness/constant/GoalsButton.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Edit Profile")),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Customfield(
            hintStyle: "Name",
            label: "Name",
          ),
          Customfield(
            hintStyle: "Email",
            label: "Name",
          ),
          Customfield(
            hintStyle: "Username",
            label: "Username",
          ),
          Customfield(
            hintStyle: "Password",
            label: "****",
          ),
          SizedBox(
            height: 20,
          ),
          Goalsbutton(title: "Submit", ontap: () {})
        ]),
      ),
    );
  }
}

class Customfield extends StatelessWidget {
  final String hintStyle;
  final String label;

  const Customfield({
    super.key,
    required this.hintStyle,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 20, left: 20),
      child: Container(
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.blue,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: Icon(Icons.abc),
                suffixIconColor: Colors.blue,
                hintText: "Label",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                labelText: "Name",
                floatingLabelStyle: const TextStyle(
                  color: Colors.blue,
                ),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                isDense: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
