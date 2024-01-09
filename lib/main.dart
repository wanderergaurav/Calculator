import 'package:flutter/material.dart';

void main(){
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator app",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State<Calculator>{

  var no1controller = TextEditingController();
  var no2controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Text('Calculator')),
     ),
     body: Container(
       color: Colors.orange.shade200,
       child: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                 keyboardType: TextInputType.number,
                 controller: no1controller,
               ),
           TextField(
             keyboardType: TextInputType.number,
             controller: no2controller,
           ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     ElevatedButton(onPressed: (){
                       var no1 = int.parse(no1controller.text);
                       var no2 = int.parse(no2controller.text);
                       var sum = no1+no2;
                       result = "The sum of $no1 and $no2 is $sum";
                       setState(() {

                       });
                     }, child: Text('Add')),

                     ElevatedButton(onPressed: (){
                       var no1 = int.parse(no1controller.text);
                       var no2 = int.parse(no2controller.text);
                       var difference = no1-no2;
                       result = "The difference of $no1 and $no2 is $difference";
                       setState(() {

                       });
                     }, child: Text('Sub')),

                     ElevatedButton(onPressed: (){
                       var no1 = int.parse(no1controller.text);
                       var no2 = int.parse(no2controller.text);
                       var product = no1*no2;
                       result = "The product of $no1 multiply $no2 is $product";
                       setState(() {

                       });
                     }, child: Text('Mult')),

                     ElevatedButton(onPressed: (){
                       var no1 = int.parse(no1controller.text);
                       var no2 = int.parse(no2controller.text);
                       var value = no1/no2;
                       result = "The value of $no1 divide $no2 is $value";
                       setState(() {

                       });
                     }, child: Text('Div')),
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(result, style: TextStyle(fontSize: 25),),
               )
             ],
           ),
         ),
       ),
     ),
   );
  }
}