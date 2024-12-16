import 'package:flutter/material.dart';


void main(){
  runApp( _MyHomePage());
}
class _MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyHomeState();


}
class _MyHomeState extends State<_MyHomePage>{
  dynamic first = 0;
  dynamic second = 0;
  var replace = 0;
  var symbol= '';
  dynamic result =0;


  @override
  Widget build(BuildContext context){
    calculate(){
      if (symbol == '+') {
        result = (first + second);
      } else if (symbol == '-') {
        result = (first - second);
      } else if (symbol == 'X') {
        result = first * second;
      } else if (symbol == '/') {
        result = first / second;
      } else if (symbol == '^') {
        result = first ^ second;
      }
    }

    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('BASIC CALCULATOR'))),
        body: Column(children: [
          Expanded( flex: 40,
            child: Container()),

          Expanded(flex: 10,

            child: Text('Result = $result', style: const TextStyle(fontSize: 25, fontFamily: 'fontMain'),),
          ),
          Expanded(flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1)

                ),
                child: Center(child: Text('$first $symbol $second = $result', style: const TextStyle(fontSize: 25, color: Colors.grey),)),)),
          Expanded(
              flex: 45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(

                    children: [ Expanded(
                      flex: 1,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          first=0;
                          symbol = '';
                          replace = 0;
                          second= 0;
                          result=0.0;
                        });
                      }, child: const SizedBox(
                        height:50,
                        child: Center(child: Text('Clear', style: TextStyle(fontSize: 17,),)),
                      )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = '%';
                            replace = 1;
                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('%', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = '^';
                            replace = 1;

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('^', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = '/';
                            replace = 1;

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('/', style: TextStyle(fontSize: 30,),)),
                        )),),
                    ],),
                  Row(

                    children: [Expanded(
                      flex: 1,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(replace==0)
                          {first = first*10 +7;}
                          else
                          {second = second*10 +7;}

                        });
                      }, child: const SizedBox(
                        height:50,
                        child: Center(child: Text('7', style: TextStyle(fontSize: 30,),)),
                      )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10 +8;}
                            else
                            {second = second*10 +8;}

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('8', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {

                            if(replace==0)
                            {first = first*10 +9;}
                            else
                            {second = second*10 +9;}

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('9', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = 'X';
                            replace = 1;

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('X', style: TextStyle(fontSize: 30,),)),
                        )),),
                    ],),
                  Row(

                    children: [ Expanded(
                      flex: 1,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(replace==0)
                          {first = first*10 +4;}
                          else
                          {second = second*10 +4;}

                        });
                      }, child: const SizedBox(
                        height:50,
                        child: Center(child: Text('4', style: TextStyle(fontSize: 30,),)),
                      )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10 +5;}
                            else
                            {second = second*10 +5;}
                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('5', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10 +6;}
                            else
                            {second = second*10 +6;}

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('6', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = '-';
                            replace = 1;

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('-', style: TextStyle(fontSize: 30,),)),
                        )),),
                    ],),
                  Row(

                    children: [ Expanded(
                      flex: 1,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(replace==0)
                          {first = first*10 +1;}
                          else
                          {second = second*10 +1;}

                        });
                      }, child: const SizedBox(
                        height:50,
                        child: Center(child: Text('1', style: TextStyle(fontSize: 30,),)),
                      )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10 +2;}
                            else
                            {second = second*10 +2;}

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('2', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10 +3;}
                            else
                            {second = second*10 +3;}

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('3', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            symbol = '+';
                            replace = 1;

                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('+', style: TextStyle(fontSize: 30,),)),
                        )),),
                    ],),
                  Row(

                    children: [ Expanded(
                      flex: 1,
                      child: ElevatedButton(onPressed: (){
                        setState(() {
                          if(replace==0)
                          {first = first*100 ;}
                          else
                          {second = second*100 ;}

                        });
                      }, child: const SizedBox(
                        height:50,
                        child: Center(child: Text('00', style: TextStyle(fontSize: 30,),)),
                      )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            if(replace==0)
                            {first = first*10;}
                            else
                            {second = second*10;}
                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('0', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){}, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('.', style: TextStyle(fontSize: 30,),)),
                        )),),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(onPressed: (){
                          setState(() {

                            calculate();
                          });
                        }, child: const SizedBox(
                          height:50,
                          child: Center(child: Text('=', style: TextStyle(fontSize: 30,),)),
                        )),),
                    ],)
                ],)),

        ],)
    ),
    );
  }

}

