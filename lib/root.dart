import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/multi_image_select.dart';
import 'package:flutter_application_1/screens/multi_selection.dart';
import 'package:flutter_application_1/screens/toggle_selection.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  final PageController controller = PageController();
  List<Widget> pages = [
    MultiSelection(),
    ToggleSelection(),
    MultiImageSelect(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: pages,
        onPageChanged: (v) {
          setState(() {});
        },
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                    child:Row(
                      children: [
                        Icon(Icons.arrow_back,color: Colors.white,),
                        Text("Previous Page",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                        
                      ],
                    )
                  
                ),
                SizedBox(width: 20,),
                Container(

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
              ],
            )
          ],
        ),
      )
    );
  }
}
