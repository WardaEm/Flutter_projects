import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter=0;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'flutter demo'
        ),
      ),

      body:  Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
            mini: true,onPressed: () {
            setState(() {

            });
            counter++;
            print(counter);
          },child: Icon(Icons.add),),
            SizedBox(width: 50,),
            Text('$counter',
              style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
              ),
            ),


            SizedBox(width: 50,),
            FloatingActionButton(onPressed: (){
              setState(() {

              });
              counter--;},child: Icon(Icons.remove),)

          ],

        ),

      ),




    );
  }
}
