import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Galary extends StatefulWidget {
  const Galary({super.key});

  @override
  State<Galary> createState() => _GalaryState();
}

class _GalaryState extends State<Galary> {

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final List<String> imageUrls = [
    "https://plus.unsplash.com/premium_photo-1694822449585-a2444c288b96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://picsum.photos/250",
    "https://picsum.photos/253",
    "https://picsum.photos/283",
    "https://picsum.photos/290",
    "https://picsum.photos/251",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessenger(
        key: scaffoldMessengerKey,
        child:  Scaffold(

            appBar: AppBar(
              elevation: 70,
              backgroundColor: Colors.green,
              title: const Text("Photo Galary" , style:
              TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),),
              centerTitle: true,

            ),


            body: Container(
              height: double.infinity,
              child:  Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 12, left: 12),
                          child:Text("Welcome to My Photo Galary!" , style:
                          TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),),

                        ),
                        SizedBox(height: 12,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 1),
                              ),
                              hintText: 'Search For Photos...',
                            ),

                          ),
                        ),
                        SizedBox(height: 12,),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            itemCount: imageUrls.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  final snackBar = SnackBar(
                                    content: Text("Image ${index + 1} clicked"),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                child: Card(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        imageUrls[index],
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 70,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("Image ${index + 1}",style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        ListView.builder(
                            shrinkWrap: true,
                            itemCount:3,
                            itemBuilder: (context, index) {
                              return  ListTile(
                                leading: Image.network(
                                  imageUrls[index],
                                  fit: BoxFit.cover,
                                  width: 48,
                                  height: 48,
                                ),
                                title: Text("Photo ${index + 1}",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                    fontSize: 12
                                ),),
                                subtitle: Text("Description for Photo ${index + 1}",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12
                              ),),
                              );

                            }),

                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 12,
                      left: 0,
                      right: 0,

                      child: GestureDetector(
                        onTap: () {
                          print("uploaded image");
                          final snackBar = SnackBar(
                            content: Text("Photos Uploaded Successfuly!"),
                          );

                          scaffoldMessengerKey?.currentState?.showSnackBar(snackBar);
                          //  scaffoldMessengerKey?.currentState.showSnackBar(snackBar);
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.upload, size: 20,color: Colors.white,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue),
                        ),
                      )


                  )
                ],
              ),

            )



        ),
      )


    );
  }
}
