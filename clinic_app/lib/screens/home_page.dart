import 'package:flutter/material.dart';
import 'package:clinic_app/model/doctor_details.dart';

import 'doctorDetails.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.sizeOf(context).height;
    double deviceWidth=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,size: 30,),
        actions: [
          Image(image: AssetImage('assets/images/doctor.jpg'))
        ],
      ),
       body:Padding(
         padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Choose your doctor',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
             SizedBox(height: 10,),
             Text('100+ available',style: TextStyle(fontSize: 18,color: Colors.grey[400]),),
             SizedBox(height: 10,),
             searchBar(deviceHeight),
             SizedBox(height: 20,),
             Row(
               children: [
                 Text('Category',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Spacer(),
                 Text('Children',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                 SizedBox(width: 5,),
                 Container(
                   height: deviceHeight*0.03,
                   width: deviceWidth*0.15,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.greenAccent[100]
                   ),
                     child: Center(child: Text('Adult',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),))),
               ],
             ),
             SizedBox(height: 20,),
             Expanded(
                 child:ListView.builder(
                   physics: BouncingScrollPhysics(),
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                     itemCount: doctorList.length,
                     itemBuilder: (context,index){
                      final doctor=doctorList[index];
                       return Padding(
                         padding: EdgeInsets.all(8),
                         child: Card(
                           color: Colors.white,
                           child: Column(
                             children: [
                               Container(
                                 height: deviceHeight*0.20,
                                 width: deviceWidth*0.40,
                                 decoration:BoxDecoration(
                                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                   image: DecorationImage(image: AssetImage(doctor.categoryImage),fit: BoxFit.cover)
                                 ),
                               ),
                               SizedBox(height: 5,),
                               Text(doctor.drCategory,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
                               SizedBox(height: 5,),
                               Text('${doctor.noOfDoctor} doctors',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black38),),
                             ],
                           ),
                         ),
                       );
                 })
             ),
             SizedBox(height: 10,),
             Text('Available doctors',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
             Expanded(
                 child:ListView.builder(
                   shrinkWrap: true,
                     itemCount: doctorList.length,
                     itemBuilder: (context,index){
                       final doctor=doctorList[index];
                       return Padding(
                         padding: EdgeInsets.all(8),
                         child: Material(
                           color: doctor.containerColor,
                           elevation: 5,
                           borderRadius: BorderRadius.circular(20),
                           child: Column(
                             children: [
                               SizedBox(
                                 width: double.infinity,
                                 child: Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 20),
                                       child: CircleAvatar(
                                         backgroundColor: doctor.color,
                                         foregroundImage: AssetImage(doctor.image),
                                         radius: 40,
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 12,top: 12),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Row(
                                             children: [
                                               Text(doctor.drName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                                               SizedBox(width: 10,),
                                               Icon(Icons.star,color: Colors.yellow[700],size: 16,),
                                               Icon(Icons.star,color: Colors.yellow[700],size: 16,),
                                               Icon(Icons.star,color: Colors.yellow[700],size: 16,),
                                               Icon(Icons.star,color: Colors.yellow[700],size: 16,),
                                               Icon(Icons.star,color: Colors.yellow[700],size: 16,),
                                             ],
                                           ),
                                           Text(doctor.drCategory,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
                                           Row(
                                             children: [
                                               Container(
                                                 height: deviceHeight*0.03,
                                                 width: deviceWidth*0.12,
                                                 decoration: BoxDecoration(
                                                   color:doctor.color,
                                                   borderRadius: BorderRadius.circular(20)
                                                 ),
                                                 child: Center(child: Text("${doctor.time1}.00"),)
                                               ),
                                               SizedBox(width: 30,),
                                               Text("${doctor.time2}.00",style: TextStyle(color: Colors.white),),
                                               SizedBox(width: 30,),
                                               Text("${doctor.time3}.00",style: TextStyle(color: Colors.white),),
                                               SizedBox(width: 23.5,),
                                               Material(
                                                 color: doctor.color,
                                                 elevation: 5,
                                                 shape: RoundedRectangleBorder(
                                                   borderRadius: BorderRadius.only(
                                                     topLeft: Radius.circular(10),
                                                     bottomRight: Radius.circular(10),
                                                   ),
                                                 ),
                                                 child: Padding(
                                                   padding: const EdgeInsets.all(12.0),
                                                   child: GestureDetector(
                                                     onTap: (){
                                                       Navigator.push(context, MaterialPageRoute(builder: (context){
                                                         return DoctorDetails(doctor:doctor,);
                                                       }));
                                                     },
                                                       child: Icon(Icons.arrow_forward_rounded,color:doctor.containerColor,size: 24,)),
                                                 ),
                                               )

                                             ],
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                               )
                             ],
                           ),
                         )
                       );
                     })
             ),

           ],
         ),
       ) ,
    );
  }

  Container searchBar(double deviceHeight) {
    return Container(
             width: double.infinity,
             height:deviceHeight*0.05 ,
             decoration:BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.grey[200]
             ) ,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Icon(Icons.search),
                   Expanded(
                       child:Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: 'Search doctor speciality',
                             hintStyle: TextStyle(
                               color: Colors.grey,
                             ),
                             border: InputBorder.none
                           ),
                         ),
                       )
                   )
                 ],
               ),
             ),
           );
  }
}