import 'package:flutter/material.dart';
import 'package:leaderboard/users_model.dart';

class LeaderBoard extends StatefulWidget{
  const LeaderBoard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LeaderBoard();
  }
}

class _LeaderBoard extends State<LeaderBoard>{
  @override
  Widget build(BuildContext context) {
    double deviceHeight =MediaQuery.sizeOf(context).height;
    double deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                child: Column(
                  children: [
                    Image.asset('images/leaderboard.jpg')
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:Container(
              height: deviceHeight*0.60,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: Color(0xFF1D503A),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15))
              ),
              child: ListView.builder(
                itemCount: UserItems.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context,index){
                  final item=UserItems[index];
                  return Padding(
                      padding: EdgeInsetsDirectional.all(20),
                    child: Row(
                      children: [
                        Text(item.rank.toString(),style: TextStyle(fontSize: 20,color: Colors.white),),
                        SizedBox(width: 30,),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(item.image,),
                        ),
                        SizedBox(width: 20,),
                        Text(item.name,style: TextStyle(fontSize: 20,color: Colors.white),),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.back_hand,color: Colors.yellow,size: 24,),
                            SizedBox(width: 10,),
                            Text(item.points.toString(),style: TextStyle(fontSize: 20,color: Colors.white),),
                          ],
                        )

                      ],
                    ),
                  );

              }),
            ),

          ),
          Positioned(
            top: 28,
              left: 130,
              child: Text('Leaderboard',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0xFF1D503A)),)),
          Positioned(
            top: 78,
              left: 25,
              child: Text('Ends in 2d and 12Hours',style: TextStyle(fontSize: 11,color: Color(0xFF1D503A)),)),
          Positioned(
            left: 45,
              top: 188,
              child:rankProfile(deviceHeight, deviceWidth, radius: 25, image: 'images/naruto.jpg', name: 'Naruto', points: 9246) ),
          Positioned(
            left: 160,
              top:126 ,
              child:rankProfile(deviceHeight, deviceWidth, radius: 40, image: 'images/eren.png', name: 'Eren yeager', points: 1267842) ),
          Positioned(
            top: 190,
              right: 50,
              child:rankProfile(deviceHeight, deviceWidth, radius: 25, image: 'images/sasuke.jpg', name: 'Sasuke', points: 7657) )

        ],
      ),
    );
  }

  Column rankProfile(double deviceHeight, double deviceWidth,{required double radius,required String image,required String name,required int points}) {
    return Column(
              children: [
                CircleAvatar(
                  radius: radius,
                  backgroundImage:AssetImage(image)
                ),
                SizedBox(
                  height: 0.02,
                ),
                Text(name,style: TextStyle(color: Color(0xFF1D503A),fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 0.01,
                ),
                Container(
                  height: deviceHeight*0.030,
                  width: deviceWidth*0.20,
                  decoration: BoxDecoration(
                    color: Color(0xFF7ED0AA),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.back_hand,size: 18,color: Colors.white,),
                      Text('$points',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)

                    ],
                  ),
                )
              ],
            );
  }
}