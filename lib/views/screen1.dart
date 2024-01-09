import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/controller/controller.dart';
import 'package:task5/views/screen2.dart';

TextEditingController numberController = TextEditingController();

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              controller: numberController,
              decoration: InputDecoration(
                  
                  hintText: "Enter a number below 25"),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  if (numberController.text.isNotEmpty) {
                    provider.Number(int.parse(numberController.text));
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => screen1(
                              number: int.parse(numberController.text),
                            )));
                  }
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
