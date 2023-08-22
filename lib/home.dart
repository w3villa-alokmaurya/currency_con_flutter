import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double result = 0.00;
  void convert() {
    result = double.parse(textEditingController.text);
    result *= 81;
    setState(() {});
  }

  final TextEditingController textEditingController = TextEditingController();
  final border = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    borderSide: BorderSide(width: 2.0, style: BorderStyle.solid),
  );
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 87, 37),
        // elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.dark_mode_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 251, 87, 37),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result.toString()}',
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amont in USD',
                  focusedBorder: border,
                  enabledBorder: border,
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 10),
            //   child: TextButton(
            //     onPressed: () {
            //       //
            //     },
            //     style: const ButtonStyle(
            //       backgroundColor: MaterialStatePropertyAll(Colors.black),
            //       foregroundColor: MaterialStatePropertyAll(Colors.white),
            //       minimumSize:
            //           MaterialStatePropertyAll(Size(double.infinity, 50)),
            //     ),
            //     child: const Text('Click me'),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                onPressed: () {
                  convert();
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
