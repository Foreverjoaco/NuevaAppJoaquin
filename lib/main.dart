import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.grey
      ),
      home: const MyHomePage(title: 'VOGUE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
 
  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://scontent.fscl15-1.fna.fbcdn.net/v/t39.30808-6/240932283_10227317733473642_4734269904665775153_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=vBhI4gASEfgAX8sv0MN&_nc_oc=AQnVbv2H7lSBofne9V3LnqYshcIt-hv47hi9p1P_zO8K6TvfAn4GsOnJI-NHtQwoAsk&_nc_ht=scontent.fscl15-1.fna&oh=f75fb45adba1c0d2d5aaa1787d06fa62&oe=616AF7AB',height: 400, fit: BoxFit.cover, width: 500),
            Text (
              'Subscripcion VOGUE', 
              style: Theme.of(context).textTheme.headline2,
            ),
           

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const <Widget>[
    Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.green,
      size: 30.0,
    ),
    Icon(
      Icons.beach_access,
      color: Colors.blue,
      size: 36.0,
    ),
     

  ],
  
),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
  padding: EdgeInsets.all(20),
 
  ),
   TextButton(
  style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  ),
  onPressed: () { },
  child: Text('TextButton'),
),

],
),
  
          ],
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 

    );
    
  }
}
