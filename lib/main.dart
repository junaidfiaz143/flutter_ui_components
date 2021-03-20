import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum SingingCharacter { lafayette, jefferson }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final isSelected = <bool>[true, false, false];
  TextEditingController usernameController = new TextEditingController();
  SingingCharacter? _character = SingingCharacter.lafayette;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      print(usernameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title!),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
            child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ToggleButtons(
              color: Colors.black.withOpacity(0.60),
              selectedColor: Color(0xFF6200EE),
              selectedBorderColor: Color(0xFF6200EE),
              fillColor: Color(0xFF6200EE).withOpacity(0.08),
              splashColor: Color(0xFF6200EE).withOpacity(0.12),
              hoverColor: Color(0xFF6200EE).withOpacity(0.04),
              borderRadius: BorderRadius.circular(4.0),
              constraints: BoxConstraints(minHeight: 36.0),
              isSelected: isSelected,
              onPressed: (index) {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 1'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 2'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 3'),
                ),
              ],
            ),
            Column(
              children: [
                InputChip(
                  avatar: Icon(Icons.remove),
                  label: Text('Input 1'),
                  onSelected: (bool value) {},
                ),
                InputChip(
                  avatar: Icon(Icons.remove),
                  label: Text('Input 2'),
                  onSelected: (bool value) {},
                ),
                InputChip(
                  avatar: Icon(Icons.remove),
                  label: Text('Input 3'),
                  onSelected: (bool value) {},
                ),
              ],
            ),
            Column(
              children: [
                ChoiceChip(
                  label: Text('Choice 1'),
                  selected: true,
                  onSelected: (val) {},
                ),
                ChoiceChip(
                  label: Text('Choice 2'),
                  selected: true,
                  onSelected: (val) {},
                ),
                ChoiceChip(
                  label: Text('Choice 3'),
                  selected: false,
                ),
                ChoiceChip(
                  label: Text('Choice 4'),
                  selected: false,
                ),
              ],
            ),
            Column(
              children: [
                FilterChip(
                  label: Text('Filter 1'),
                  selected: true,
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter 2'),
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter 3'),
                  selected: true,
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter 4'),
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter 5'),
                  onSelected: (bool value) {},
                ),
                FilterChip(
                  label: Text('Filter 6'),
                  onSelected: (bool value) {},
                ),
              ],
            ),
            Column(
              children: [
                ActionChip(
                  avatar: Icon(Icons.favorite),
                  label: Text('Action 1'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: Icon(Icons.delete),
                  label: Text('Action 2'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: Icon(Icons.alarm),
                  label: Text('Action 3'),
                  onPressed: () {},
                ),
                ActionChip(
                  avatar: Icon(Icons.location_on),
                  label: Text('Action 4'),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Lafayette'),
                  leading: Radio(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Thomas Jefferson'),
                  leading: Radio(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Checkbox(
              value: false,
              onChanged: (value) {
                print("checkbox");
              },
            ),
            Switch(
                value: true,
                onChanged: (val) {
                  print("switch");
                }),
            Slider(
              value: 10,
              min: 0,
              max: 100,
              divisions: 1,
              label: 10.round().toString(),
              onChanged: (double value) {},
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                    controller: usernameController,
                    focusNode: FocusNode(),
                    obscureText: false,
                    // style: TextStyle(color: Colors.red),
                    decoration: InputDecoration(
                        labelText: "username",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(width: 1, color: Colors.red),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                new BorderSide(width: 1.0, color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))))))
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
