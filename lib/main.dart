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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
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
                  child: Text(
                    'Press Me!',
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
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
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.all(25),
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Text(
                        'This is the container',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: MediaQuery.of(context).size.height * 0.50,
                ),
              ],
            ),
          ),
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
}
