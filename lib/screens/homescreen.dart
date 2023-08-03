import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(fontSize: 25),
        ),
        elevation: 2.0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Answer",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Amount in USD",
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
              prefixIcon: Icon(Icons.attach_money),
              prefixIconColor: Colors.blue,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(

                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Amount in INR",
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
              prefixIcon: Icon(Icons.money_rounded),
              prefixIconColor: Colors.blue,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(

                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 40,
          ),
          // button

        ],
      ),
    );
  }
}
