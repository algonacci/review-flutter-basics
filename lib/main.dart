import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.deepPurple,
    );
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          secondary: Colors.pink,
        ),
      ),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('First Project'),
            backgroundColor: Colors.deepPurple,
          ),
          body: containerLesson(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('Button Clicked');
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(
              Icons.add_circle_outline,
            ),
          ),
        );
      }),
    );
  }

  Widget containerLesson() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 28,
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print('PRESSED');
            },
            child: const Text(
              'Press Me!',
            ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                logoContainer(),
                logoContainer(),
              ],
            ),
          ),
          Row(
            children: expandedContainer,
          )
        ],
      ),
    );
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        child: Container(
          color: Colors.pink.shade100,
          width: 200,
          height: 200,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          color: Colors.red,
          width: 300,
          height: 200,
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.blue,
          width: 300,
          height: 200,
        ),
      ),
      Flexible(
        child: Container(
          color: Colors.yellow,
          width: 300,
          height: 200,
        ),
      ),
    ];
  }

  Widget logoContainer() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      // color: Colors.yellow,
      child: const FlutterLogo(
        style: FlutterLogoStyle.horizontal,
        size: 120,
      ),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          width: 5,
          color: Colors.purple,
        ),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(
              10,
              10,
            ),
            blurRadius: 20,
          ),
          BoxShadow(
            color: Colors.purple,
            offset: Offset(
              -10,
              -10,
            ),
            blurRadius: 20,
          ),
        ],
      ),
      // width: MediaQuery.of(context).size.width * 0.80,
      // height: MediaQuery.of(context).size.height * 0.50,
    );
  }
}
