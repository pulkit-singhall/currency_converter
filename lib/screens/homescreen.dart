import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Currency Converter",
          style: TextStyle(fontSize: 25),
        ),
        elevation: 2.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your Answer",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 350,
              child: const TextField(
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
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLines: 1,
                minLines: 1,
                maxLength: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 350,
              child: const TextField(
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
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                maxLines: 1,
                minLines: 1,
                maxLength: 10,
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // button
          ElevatedButton(
              onPressed: () {

              },
              child: const Text(
                "Convert",
                style: TextStyle(fontSize: 25),
              ),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              elevation: MaterialStatePropertyAll(5),
              fixedSize: MaterialStatePropertyAll(Size(140,45)),
            ) ,
          ),
        ],
      ),
    );
  }
}
