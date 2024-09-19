import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple header section
        Container(
          width: screenWidth,
          height: screenHeight * 0.31,
          decoration: const BoxDecoration(
            color: Color(0xFF6D6BE7),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 50.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.orange,
                      size: 40, // Icon size as per request
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My location',
                          style: TextStyle(
                            color: Color(0xFFB0BCE7),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Barcelona, Spain',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  'Hi Saim,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Need some help today?',
                  style: TextStyle(
                    color: Color(0xFFF8F8FA),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Custom toggle button with stack for opacity control
        Positioned(
          top: screenHeight * 0.18,
          right: 20,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PopupMenuButton<String>(
                offset: const Offset(-20, 50),
                color: Colors.white,
                icon: Opacity(
                  opacity: 0.7,
                  child: Container(
                    width: screenWidth * 0.2,
                    height: screenWidth * 0.2,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFEAE9FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x266D6BE7),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                          spreadRadius: 1,
                        )
                      ],
                    ),
                  ),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft:
                        Radius.circular(8), // Custom radius for bottom left
                    bottomRight:
                        Radius.circular(8), // Custom radius for bottom right
                  ),
                ),
                onSelected: (String result) {
                  switch (result) {
                    case 'Profile':
                      Navigator.of(context).pushNamed('/profile');
                      // Handle edit action
                      break;
                    case 'Holiday application':
                      Navigator.of(context).pushNamed('/applyholiday');
                      // Handle edit action
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Profile',
                    child: Text('Profile'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Holiday application',
                    child: Text('Holiday application'),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // First thick white line
                  Container(
                    width: 30,
                    height: 5, // Increased thickness
                    color: Colors.white, // White color for the line
                  ),
                  const SizedBox(height: 8),
                  // Second thick white line
                  Container(
                    width: 30,
                    height: 5, // Increased thickness
                    color: Colors.white,
                    // White color for the line
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
