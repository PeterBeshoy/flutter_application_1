import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/image_select.dart';
import 'package:flutter_application_1/screens/single_selection.dart';
import 'package:flutter_application_1/screens/toggle_selection.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController controller = PageController();
  List<Widget> pages = [
    SingleSelection(),
    ImageSelection(),
    ToggleSelection(),
    
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: pages,
        onPageChanged: (v) {
          setState(() {
            currentIndex = v;
          });
        },
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      controller.jumpToPage((currentIndex - 1 + pages.length) % pages.length);
                    });
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 213, 213),
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child:Row(
                        children: [
                          Icon(Icons.arrow_back,color: Colors.blueAccent,),
                          //Text("Previous Page",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                          
                        ],
                      )
                    
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      controller.jumpToPage((currentIndex + 1) % pages.length);
                    });
                  },
                  child: Container(
                  
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                      child:Row(
                        children: [
                          Text("Next Page",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      )
                    
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
