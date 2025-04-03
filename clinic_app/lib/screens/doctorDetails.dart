import 'package:flutter/material.dart';

import '../model/doctor_details.dart';

class DoctorDetails extends StatelessWidget{
  final Doctor doctor;

  const DoctorDetails({super.key ,required this.doctor});

  @override
  Widget build(BuildContext context) {
    double deviceHeight=MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              top: 0,
              right: 0,
              child:Container(
            height: deviceHeight*0.50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: doctor.containerColor,
              image: DecorationImage(image: AssetImage(doctor.image),fit: BoxFit.cover)
            ),
          )),
          Positioned(
              left: 15,
              top: 35,
              child:GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 45,))
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: deviceHeight*0.55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctor.drName,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(doctor.drCategory,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black38),),
                      SizedBox(height: 20,),
                      Text('About doctor',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(doctor.aboutDoctor,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.justify,),
                      SizedBox(height: 20,),
                      Text('Upcoming Schedules',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: deviceHeight*0.10,
                        decoration: BoxDecoration(
                          color: doctor.color,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: deviceHeight*0.08,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: doctor.containerColor,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text(doctor.date,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                              SizedBox(width: 25,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Consultation',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                  Text(doctor.consultantTime,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}