import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double result=0;
  final TextEditingController amount = TextEditingController();

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
          Text(
            "Converted Currency ${result}",
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 350,
              child: TextField(
                controller: amount,
                decoration: const InputDecoration(
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
          // button
          ElevatedButton(
              onPressed: () {
                  setState(() {
                    if(amount.text.isEmpty){
                      print('Empty Input');
                    }
                    else{
                      result= double.parse(amount.text)*81;
                    }
                  });
              },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              elevation: MaterialStatePropertyAll(5),
              fixedSize: MaterialStatePropertyAll(Size(140,45)),
            ) ,
            child: const Text(
              "Convert",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
