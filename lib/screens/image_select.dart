import 'package:flutter/material.dart';

class ImageSelection extends StatefulWidget {
  const ImageSelection({super.key});

  @override
  State<ImageSelection> createState() => _ImageSelectionState();
}

class _ImageSelectionState extends State<ImageSelection> {
  List<String> images = [
    "assets/laptop/labtop1.png",
    "assets/laptop/labtop2.png",
    "assets/laptop/labtop3.png",
    "assets/laptop/labtop4.png",
    "assets/laptop/labtop2.png",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdee00),
      body: Column(
        children: [
          SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            height: 350,
            child: Image.asset("assets/laptop/labtop1.png", fit: BoxFit.cover),
          ),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                images.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
