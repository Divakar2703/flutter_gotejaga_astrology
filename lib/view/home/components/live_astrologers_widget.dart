import 'package:flutter/material.dart';
import 'package:flutter_gote_jaga_astrology/utils/colors.dart';

class LiveAstrologersWidget extends StatefulWidget {
  const LiveAstrologersWidget({Key? key}) : super(key: key);

  @override
  State<LiveAstrologersWidget> createState() =>
      _GroceryItemHomeScreenShowScrollState();
}

class _GroceryItemHomeScreenShowScrollState
    extends State<LiveAstrologersWidget>
    with TickerProviderStateMixin {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/pandit_one.png',
      'title': 'Rahul Rao',
      'icon': Icons.call,
    },
    {
      'image': 'assets/images/pandit_three.png',
      'title': 'Punam Singh',
      'icon': Icons.video_camera_front_outlined,
    },
    {
      'image': 'assets/images/pandit_two.png',
      'title': 'Deepak Mali',
      'icon': Icons.call,
    },
    {
      'image': 'assets/images/pandit_one.png',
      'title': 'Rahul Jain',
      'icon': Icons.call,
    },
    // Add more items as needed
  ];

  late List<AnimationController> _controllers;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controllers and animations for each item
    _controllers = List.generate(items.length, (index) {
      final controller = AnimationController(
        duration: Duration(milliseconds: 800 + index * 100), // Stagger the animation start
        vsync: this,
      )..forward(); // Automatically start the animation
      return controller;
    });

    _animations = _controllers.map((controller) {
      return Tween<Offset>(
        begin: Offset(1.0, 0.0), // Slide from the right
        end: Offset.zero, // To its final position
      ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ));
    }).toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(), // Adjust scroll physics as needed
      child: Row(
        children: List.generate(
          items.length,
              (index) => AnimatedBuilder(
            animation: _animations[index],
            builder: (context, child) {
              return SlideTransition(
                position: _animations[index], // Apply the sliding animation
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Image Container
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: lightPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 4, bottom: 4),
                                height: 155,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(items[index]['image']), // Access the image here
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          // Circular Decoration
                          Positioned(
                            top: 6,
                            left: 19, // Adjust this value as needed
                            child: Container(
                              height: 32, // Diameter of the circular overlay
                              width: 32, // Diameter of the circular overlay
                              decoration: BoxDecoration(
                                color: Colors.red, // Color of the circular overlay
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 0), // Optional border
                              ),
                              child: Center(
                                child: Icon(
                                  items[index]['icon'],
                                  size: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Add more details below the container if needed
                      const SizedBox(height: 5),
                      Text(
                        items[index]['title'],
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
