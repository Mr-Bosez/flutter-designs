import 'package:flutter/material.dart';
import 'package:sign_up_page/utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpPage extends StatefulWidget{
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage>{
  bool isClicked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 80),
          child: Expanded(
            child: Column(
              children: [
                Text('Sign Up',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: secondaryColor),),
                SizedBox(height: 60,),
                textField('Email',false),
                SizedBox(height: 25,),
                textField('Password',true),
                SizedBox(height: 25,),
                textField('Repeat Password',true),
                Padding(
                    padding: EdgeInsets.only(top: 25,left: 5,bottom: 30),
                    child:Row(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor,
                            boxShadow: [
                              BoxShadow(color: Colors.black.withAlpha(15),spreadRadius: 2,offset: Offset(0, 3),blurRadius: 5)
                            ]
                          ),
                          child:GestureDetector(
                            onTap: (){
                              setState(() {
                                isClicked=!isClicked;
                              });
                            },
                            child: Center(
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isClicked ? Color(0XFF31FCBF):Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('Remember me',style: TextStyle(color:secondaryColor,fontSize: 18,fontWeight: FontWeight.w400),)
                      ],
                    )
                ),
                Text('signUp with social account',style: TextStyle(color:secondaryColor,fontSize: 20),),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialMedia(FontAwesomeIcons.facebook),
                    socialMedia(FontAwesomeIcons.instagram),
                    socialMedia(FontAwesomeIcons.twitter),
            
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin:Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors:[Color(0XFF06D6A0),Color(0XFF8BF8D4),]),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(40),
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 2
                      )
                    ]
                  ),
                  child: Center(child: Text('Sign Up',style: TextStyle(color: primaryColor,fontSize: 32,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(
                  height: 30
                ),
                Text('Read User License Agreement',style: TextStyle(fontSize: 17,color: secondaryColor,),)
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container socialMedia(iconType) {
    return Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(15),
                    blurRadius: 5,
                    spreadRadius: 3,
                    offset: Offset(0,3),
                  )
                ]
              ),
              child: Center(
                child: Icon(iconType,color: secondaryColor,size: 40,),
              ),
            );
  }

  Material textField(hint,bool obscureOption) {
    return Material(
              color: primaryColor,
              borderRadius: BorderRadius.circular(40),
              shadowColor: secondaryColor,
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.only(left: 20,top: 2,bottom: 2),
                child:TextFormField(
                  obscuringCharacter: '*',
                  obscureText:obscureOption ,
                  expands: false,
                  maxLines: 1,
                  cursorColor: Colors.grey,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18
                  ),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                    border: InputBorder.none,
                  ),
                )),
            );
  }
}