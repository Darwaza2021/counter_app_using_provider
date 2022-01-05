import 'package:counter_app_using_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app by using provider'),
        backgroundColor:Colors.red,

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Use these push Button to counting: ${context.watch<Counter>().count}'),
            
          ],
        ),
      ),

      //buttons 
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.red,

          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            backgroundColor: Colors.red,

            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

