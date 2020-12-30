import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: combineWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget centWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }

  //容器组件
  Widget paddingWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 60, 30, 60),
      child: Container(
        color: Colors.green,
        // child: Text('hahahha'), 容器跟子空件大小而定
      ),
    );
  }

  //Container
  Widget constainWidget() {
    return Container(
      height: 100,
      width: 50,
      color: Colors.red,
    );
  }

  //约束设置
  Widget constainBoxWidget() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 100, maxWidth: 200),
      //子控件不会超出上面的约束
      child: Container(
        height: 200,
        width: 300,
        color: Colors.red,
      ),
    );
  }

  //固定宽高
  Widget sizeBoxWidget() {
    return SizedBox(
      width: 300,
      height: 300,
      child: Container(color: Colors.red),
    );
  }

  //变换组件
  Widget rotateWidget() {
    return Center(
      child: Transform.rotate(
        angle: 90,
        child: Container(
          child: Text("我是文本哈哈"),
          color: Colors.green,
        ),
      ),
    );
  }

  //缩放组件
  Widget scaleWidget() {
    return Center(
      child: Transform.scale(
        scale: 6,
        child: Container(
          child: Text("我是文本哈哈"),
          color: Colors.green,
        ),
      ),
    );
  }

  //组合类容器
  Widget combineWidget() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        //阴影
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.green, offset: Offset(4, 4), blurRadius: 4)
        ]),
        child: Text('this is Container'),
      ),
    );
  }
}
