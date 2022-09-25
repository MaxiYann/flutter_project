import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ColorGenerator());
}

class ColorGenerator extends StatelessWidget {
  const ColorGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'My Useless App', home: ColorGen2());
  }
}

class ColorGen2 extends StatelessWidget {
  const ColorGen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Useless App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Random ColorPicker App'),
        ),
        body: ListView.builder(itemBuilder: (_, index) {
          const primaries = [
            'red (rgb: 244, 67, 54)',
            'pink (rgb: 233, 30, 99)',
            'purple (rgb: 155, 39, 176)',
            'deep purple (rgb: 103, 58, 183)',
            'indigo (rgb: 63, 81, 181)',
            'blue (rgb: 33, 150, 243)',
            'light blue (rgb: 3, 169, 244)',
            'cyan (rgb: 0, 188, 212)',
            'teal (rgb: 0, 150, 136)',
            'green (rgb: 76, 174, 80)',
            'light green (rgb: 139, 195, 74)',
            'lime (rgb: 205, 220, 57)',
            'yellow (rgb: 255, 235, 59)',
            'amber (rgb: 255, 193, 7)',
            'orange (rgb: 255, 152, 0)',
            'deep orange (rgb: 255, 87, 34)',
            'brown (rgb: 121, 85, 72)',
            'blue grey (rgb: 96, 125, 139)',
          ];
          var colors = Random().nextInt(Colors.primaries.length);
          var trueColor = primaries[colors];
          return Container(
            // child: var colo = Random().nextInt(Colors.primaries.length);
            color: Colors.primaries[colors],
            width: 500,
            height: 700,
            alignment: AlignmentDirectional.center,
            child: Text('This color is $trueColor.'),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ColorList(),
                ));
          },
          tooltip: 'This is the list of all available color',
          child: const Icon(
            Icons.list,
            color: Colors.indigo,
          ),
        ),
        drawer: Drawer(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: const Text(
                'This app allow you to infinitely scroll through randomly generated color. It give you the name and the rgb code of the color you\'re currently looking at. There is also an other tab that give you the list of all available colors, their name and rgb code. The color\'s names are the Dart programming language one\'s.'),
          ),
        ),
      ),
    );
  }
}

class ColorList extends StatelessWidget {
  const ColorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Random ColorPicker App'),
      ),
      body: const Text(
          'This is the list of all available color: \n\nred (rgb: 244, 67, 54), \npink (rgb: 233, 30, 99), \npurple (rgb: 155, 39, 176), \ndeep purple (rgb: 103, 58, 183), \nindigo (rgb: 63, 81, 181), \nblue (rgb: 33, 150, 243), \nlight blue (rgb: 3, 169, 244), \ncyan (rgb: 0, 188, 212), \nteal (rgb: 0, 150, 136), \ngreen (rgb: 76, 174, 80), \nlight green (rgb: 139, 195, 74), \nlime (rgb: 205, 220, 57), \nyellow (rgb: 255, 235, 59), \namber (rgb: 255, 193, 7), \norange (rgb: 255, 152, 0), \ndeep orange (rgb: 255, 87, 34), \nbrown (rgb: 121, 85, 72), \nblue grey (rgb: 96, 125, 139),'),
    );
  }
}
