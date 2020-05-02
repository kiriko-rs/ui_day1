import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      // iPhone X以降登場した概念。ノッチによりアプリの画面表示の際にコンテンツが隠蔽されないようにするために設けられた画面表示領域。
      body: SafeArea(
        // SafeAreaとScaffold間の最小padding値,画面上部のように指定値より高い値がpaddingされている場合は無視される。
        minimum: EdgeInsets.all(15.0),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.red.shade300,
                        child: Center(
                          child: Text(
                            "Row:start",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.red.shade300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.red.shade300,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.grey.shade600,
                ),
                Wrap(
                  // 水平に並べるか、垂直に並べるか指定
                  direction: Axis.horizontal,
                  // 次の行または列との間隔を指定する
                  runSpacing: 20.0,
                  runAlignment: WrapAlignment.start,
                  // 次の行を
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.green.shade300,
                        child: Center(
                          child: Text(
                            "Wrap:start",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.green.shade300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.green.shade300,
                        child: Center(
                          child: Text(
                            "はみ出たので上に移動",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.grey.shade600,
                ),
                Wrap(
                  // 水平に並べるか、垂直に並べるか指定
                  direction: Axis.horizontal,
                  // 次の行または列との間隔を指定する
                  runSpacing: 20.0,
                  runAlignment: WrapAlignment.start,
                  // 次の行を
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.blue.shade300,
                        child: Center(
                          child: Text(
                            "Wrap:start",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.blue.shade300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 50,
                        color: Colors.blue.shade300,
                        child: Center(
                          child: Text(
                            "はみ出たので下に移動",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.grey.shade600,
                ),
                // Flexibleにしないとサイズが取れないので、次の列に移動しない
                Flexible(
                  child: Row(
                    children: <Widget>[
                      Wrap(
                        // 水平に並べるか、垂直に並べるか指定
                        direction: Axis.vertical,
                        // 次の行または列との間隔を指定する
                        runSpacing: 20.0,
                        runAlignment: WrapAlignment.end,
                        // 次の行を
                        verticalDirection: VerticalDirection.down,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                              child: Center(
                                child: Text(
                                  "Wrap:\nstart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                              child: Center(
                                child: Text(
                                  "次の列へ移動",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.pink.shade300,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 10,
                        color: Colors.grey.shade600,
                      ),
                      Wrap(
                        // 水平に並べるか、垂直に並べるか指定
                        direction: Axis.vertical,
                        // 次の行または列との間隔を指定する
                        runSpacing: 20.0,
                        runAlignment: WrapAlignment.end,
                        // 次の行を
                        verticalDirection: VerticalDirection.up,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                              child: Center(
                                child: Text(
                                  "Wrap:\nstart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                              child: Center(
                                child: Text(
                                  "次の列へ移動",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              color: Colors.purple.shade300,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
