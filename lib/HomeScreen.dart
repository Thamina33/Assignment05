import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            elevation: 70,
            backgroundColor: Colors.green,
            leading: const Icon(Icons.menu, size: 24, color: Colors.white,),
            title: const Text("Home" , style:
            TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
            centerTitle: true,
            actions:  [
              IconButton(
                icon: const Icon(Icons.search,size: 24, color: Colors.white,),
                tooltip: 'Open Search bar',
                onPressed: (){},
              ),
            ],
          ),
        ),

        body:
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("This is mod 5 Assignment",style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14,
                  ),),
                  SizedBox(height: 12,),
                  RichText(
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.0,
                    text: const TextSpan(
                      text: 'My ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 14,
                      ),
                      children: [

                        TextSpan(
                          text: 'phone ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: 'name ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF00FF)
                          ),
                        ),
                        TextSpan(
                          text: 'your phone name.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )

      ),
    );
  }
}
