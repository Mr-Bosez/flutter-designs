import 'package:flutter/material.dart';
import 'package:profilepage/pages/role.dart';
import '../utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  int selectedIndex = 0;

  void indexUpdation(index) {
    setState(() {
      selectedIndex = index;
    });
    if (index==1){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return RolePage();
      }));
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
              height: deviceHeight * 0.30,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              child: Row(
                children: [
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
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Madara\nUchiha',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'madara@gmail.com',
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
                          'Leaf Village',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 17, right: 17),
            child: Container(
              height: deviceHeight * 0.28,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BIO',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'GHOST OF UCHIHA',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),

                    Text(
                      textAlign:TextAlign.justify,
                      'Madara Uchiha was a legendary shinobi and the co-founder of Konohagakure alongside Hashirama Senju. As the leader of the Uchiha clan, he sought peace through power, often clashing with Hashirama’s ideals. He possessed the Eternal Mangekyō Sharingan, Rinnegan, and immense battle prowess,making him nearly invincible. Manipulated by Black Zetsu, he was ultimately defeated in the Fourth Great Ninja War. Despite his downfall, Madara\'s legacy shaped the shinobi world forever.',
                    style: TextStyle(color: Colors.grey[700],fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 17, right: 17),
            child: Container(
              height: deviceHeight * 0.10,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ON THE WEB',style: TextStyle(color: Colors.grey[700],fontSize:18,fontWeight: FontWeight.bold ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(FontAwesomeIcons.facebook,color:primaryColor,size: 38,),
                          Icon(FontAwesomeIcons.linkedin,color:primaryColor,size: 38),
                          Icon(FontAwesomeIcons.twitter,color:primaryColor,size: 38),
                          Icon(FontAwesomeIcons.instagram,color:primaryColor,size: 38),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 17, right: 17),
            child: Container(
              height: deviceHeight * 0.10,
              width: deviceWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('WEBSITE',style: TextStyle(color: Colors.grey[700],fontSize: 18),),
                        Text('www.Animeunite.org',style: TextStyle(color: Colors.grey[700],fontSize: 18),),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('PHONE',style: TextStyle(color: Colors.grey[700],fontSize: 18),),
                        Text('6758942301',style: TextStyle(color: Colors.grey[700],fontSize: 18),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
