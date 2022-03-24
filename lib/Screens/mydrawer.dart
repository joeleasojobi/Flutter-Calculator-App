import 'package:calculator_sidenav_app/Screens/addition.dart';
import 'package:calculator_sidenav_app/Screens/division.dart';
import 'package:calculator_sidenav_app/Screens/multiplication.dart';
import 'package:calculator_sidenav_app/Screens/subtraction.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/lily-isolated-picture-id183384405?b=1&k=20&m=183384405&s=170667a&w=0&h=PJRsHZZJ7Wb_CsyOk1_JHVIPgLuEfERJVdsylHxiskA="),
              ),
              accountName: Text("Joel"),
              accountEmail: Text("j@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
            },
            leading: Icon(Icons.add),
            title: Text("Addition"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtract()));
            },
            leading: Icon(Icons.minimize),
            title: Text("Subtraction"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiply()));
            },
            leading: Icon(Icons.star_border_outlined),
            title: Text("Multiplication"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));
            },
            leading: Icon(Icons.safety_divider_sharp),
            title: Text("Division"),
          ),
        ],
      ),
    );
  }
}
