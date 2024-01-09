import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task5/controller/controller.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key, required this.number}) : super(key: key);
  final int number;

  @override
  State<screen1> createState() => _HomePageState();
}

class _HomePageState extends State<screen1> {
  @override
  void initState() {
    final provider = Provider.of<HomeController>(context, listen: false);
    Future.delayed(Duration(seconds: 0), () {
      provider.setRandom();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);

    return Scaffold(
      body: GridView.builder(
        itemCount: widget.number,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                if (index == provider.random) {
                  provider.ClickedIndexes(index);
                  provider.setRandom();
                }
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  color: provider.clickedIndexes.contains(index)
                      ? Color.fromARGB(239, 52, 202, 70)
                      : provider.random != null && index == provider.random
                          ? Color.fromARGB(255, 5, 69, 122)
                          : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
