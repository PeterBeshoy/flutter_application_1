import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  List<Map> gifts = [
    {"name": "Lion", "image": "assets/animals/lion.png"},
    {"name": "Tiger", "image": "assets/animals/tiger.png"},
    {"name": "Cow", "image": "assets/animals/cow.png"},
    {"name": "deer", "image": "assets/animals/deer.png"},
    {"name": "Giraffe", "image": "assets/animals/giraffe.png"},
    {"name": "Penguin", "image": "assets/animals/pingeon.png"},
    {"name": "rat", "image": "assets/animals/rat.png"},
    {"name": "white-tiger", "image": "assets/animals/white-tiger.png"},
  ];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.builder(
          itemCount: gifts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Stack(
                children: [
                  selectedIndex == index
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.pink, Colors.purple],
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),

                  Column(
                    children: [
                      Image.asset(
                        height: selectedIndex == index ? 100 : 120,
                        width: 100,
                        gifts[index]['image'],
                      ),
                      selectedIndex == index
                          ? SizedBox.shrink()
                          : SizedBox(height: 20),
                      SizedBox(height: 10),
                      Text(
                        "${gifts[index]['name']}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  selectedIndex == index
                      ? Positioned(
                          bottom: 15,
                          right: 0,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.pink,
                            ),
                            child: Center(
                              child: Text(
                                "Send",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
