import 'package:flutter/material.dart';
import '../shared/colors/app_colors.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List<IconData> icons = const [
    Icons.logout,
    Icons.volume_up,
    Icons.question_mark,
    Icons.question_mark,
  ];
  List<String> titles = const [
    "Log out",
    "Sound",
    "Info ADHD",
    "About ADHD",
  ];

  List<Color> colors =const [
    Colors.red,
    Color(0xffB2B4FE),
    Color(0xffFEB2F6),
    Color(0xffC8ED5E),
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(
                top: screenHeight * 0.15
              ),
              child: Container(
                width: double.infinity,
                decoration: const  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )
                ),
                child: Padding(
                  padding:  EdgeInsets.only(
                      top: screenHeight * 0.1
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  textFormFieldWidget(
                                    width: screenWidth * 0.5,
                                    title: "Email",
                                    hintText: "email@example.com",
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: textFormFieldWidget(
                                      width: screenWidth * 0.5,
                                      title: "Name",
                                      hintText: "Afaf Rady",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Expanded(
                                    child: textFormFieldWidget(
                                      width: screenWidth * 0.5,
                                      title: "Age",
                                      hintText: "22",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.builder(
                            itemCount: 4,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                child: Container(
                                  width: screenWidth * 0.5,
                                  height: screenHeight * 0.1,
                                  decoration: BoxDecoration(
                                    color: colors[index],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        icons[index],
                                        size: 64.0,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        titles[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Profile Image
            Positioned(
              top: screenHeight * 0.07,
              left: 0,
              right: 0,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child:  CircleAvatar(
                  radius: 64.0,
                  backgroundColor: AppColors.appBarColor,
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ClipOval(
                      child: Image(
                        image: AssetImage("assets/images/profile_image.jpg",),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget textFormFieldWidget({required String title , required String hintText , required double width}){
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration:  InputDecoration(
                hintText: hintText,
                enabled: false,

                filled: true,
                hintStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),

                fillColor: Colors.white,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    )
                )
            ),
          ),
        ),
      ],
    );
  }
}
