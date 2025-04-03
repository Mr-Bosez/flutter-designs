import 'package:flutter/material.dart';
import 'package:profilepage/pages/profilePage.dart';
import '../utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RolePage extends StatefulWidget {
  const RolePage({super.key});



  @override
  State<StatefulWidget> createState() {
    return _RolePage();
  }
}

class _RolePage extends State<RolePage> {
  int selectedIndex = 1;

  void indexUpdation(index) {
    setState(() {
      selectedIndex = index;
    });

    if (index==0){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.sizeOf(context).height;
    double deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 17, right: 17),
            child: Container(
              height: deviceHeight * 0.32,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leader of the \nUchiha Clan',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Type',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Shinobi (Ninja)',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Date of birth',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'December 24th 2012',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Address',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Konohagakure \n(Hidden Leaf Village)',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/madara.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: deviceHeight * 0.28,
                      width: deviceWidth * 0.40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 17, right: 17),
            child: Container(
              height: deviceHeight * 0.05,
              width: deviceWidth * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: secondaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  slideOption(deviceHeight, deviceWidth, 0, 'ABOUT'),
                  slideOption(deviceHeight, deviceWidth, 1, 'PERFORMANCE'),
                  slideOption(deviceHeight, deviceWidth, 2, 'ACTIVITY'),
                ],
              ),
            ),
          ),
          projects(deviceHeight, 4, 'Project done', "90 %", "Success Rate"),
          projects(deviceHeight, 3, 'Teams', "4", "Reports"),
        ],
      ),
    );
  }

  Padding projects(deviceHeight,int number1,String name1, String number2,String name2) {
    return Padding(padding: const EdgeInsets.only(top: 15, left: 17, right: 17),
        child:Row(
          children: [
            Expanded(
                child:Container(
                  height: deviceHeight*0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: secondaryColor
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(number1.toString(),
                        style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                      Text(name1,
                        style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    ]
                  ),
                )
            ),
            SizedBox(width: 20,),
            Expanded(
                child:Container(
                  height: deviceHeight*0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: secondaryColor
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(number2,
                        style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                      Text(name2,
                        style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
        );
  }

  GestureDetector slideOption(
      deviceHeight,
      deviceWidth,
      int index,
      String label,
      ) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () {
        indexUpdation(index);
      },
      child: Container(
        height: deviceHeight * 0.04,
        width: deviceWidth * 0.24,
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            label,
            softWrap: true,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
