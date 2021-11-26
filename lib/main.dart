import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static String title = "STC";

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(MyApp.title),
              centerTitle: true,
            ),
            body: SafeArea(
                child: Stack(children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: getcolor(Colors.red, Colors.white),
                        backgroundColor: getcolor(Colors.white, Colors.red),
                        overlayColor: getcolor(Colors.red, Colors.red)),
                    child: const Text('Red'),
                    onPressed: () {},
                  )
                ]),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: getcolor(Colors.blue, Colors.white),
                      backgroundColor: getcolor(Colors.white, Colors.blue),
                      overlayColor: getcolor(Colors.blue, Colors.blue)),
                  child: const Text('Blue'),
                  onPressed: () {},
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: getcolor(Colors.yellow, Colors.white),
                        backgroundColor: getcolor(Colors.white, Colors.yellow),
                        overlayColor: getcolor(Colors.yellow, Colors.yellow)),
                    child: const Text('Yellow'),
                    onPressed: () {},
                  )
                ]),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: getcolor(Colors.green, Colors.white),
                      backgroundColor: getcolor(Colors.white, Colors.green),
                      overlayColor: getcolor(Colors.green, Colors.green)),
                  child: const Text('Green'),
                  onPressed: () {},
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: getcolor(Colors.pink, Colors.white),
                        backgroundColor: getcolor(Colors.white, Colors.pink),
                        overlayColor: getcolor(Colors.pink, Colors.pink)),
                    child: const Text('Pink'),
                    onPressed: () {},
                  )
                ]),
              ]),
            ]))));
  } //scaffold

  MaterialStateProperty<Color> getcolor(Color color, Color colorpressed) {
    // ignore: prefer_function_declarations_over_variables
    final getcolor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorpressed;
      } else {
        return color;
      }
    };

    return MaterialStateProperty.resolveWith(getcolor);
  }
}