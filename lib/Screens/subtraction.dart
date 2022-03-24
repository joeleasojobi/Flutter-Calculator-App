import 'package:calculator_sidenav_app/Screens/mydrawer.dart';
import 'package:flutter/material.dart';

class Subtract extends StatefulWidget {
  const Subtract({Key? key}) : super(key: key);
  @override
  State<Subtract> createState() => _SubtractState();
}

class _SubtractState extends State<Subtract> {

  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  double _result=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("SUBTRACTION")),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                      hintText: "Enter First Number",
                      labelText: "Enter First Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                      hintText: "Enter Second Number",
                      labelText: "Enter Second Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(
                  height: 20,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ))
                      ),
                      onPressed: (){
                        var getNum1=double.parse(num1.text);
                        var getNum2=double.parse(num2.text);
                        setState(() {
                          _result=getNum1-getNum2;
                        });
                      },
                      child: Text("SUBTRACT")),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Result: "+_result.toString(),style: TextStyle(
                  fontSize: 20,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}