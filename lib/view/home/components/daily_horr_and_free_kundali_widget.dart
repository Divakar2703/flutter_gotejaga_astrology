import 'package:flutter/material.dart';
import 'package:flutter_gote_jaga_astrology/utils/colors.dart';

class DailyHorrAndFreeKundaliWidget extends StatefulWidget {
  const DailyHorrAndFreeKundaliWidget({Key? key}) : super(key: key);

  @override
  State<DailyHorrAndFreeKundaliWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<DailyHorrAndFreeKundaliWidget> with TickerProviderStateMixin {
  final List<Map<String, String>> categories = [
    {"icon": 'assets/images/daily_horr.png', "label": "Daily Horoscope"},
    {"icon": 'assets/images/kundli_three.png', "label": "Free Kundli"},
    {"icon": 'assets/images/matching.png', "label": "Matching"},
    {"icon": 'assets/images/blog.png', "label": "Astrology blog"},
    // Add more categories as needed
  ];

  late List<AnimationController> _controllers;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(categories.length, (index) {
      final controller = AnimationController(
        duration: Duration(milliseconds: 800 + index * 100),
        vsync: this,
      )..forward();
      return controller;
    });

    _animations = _controllers.map((controller) {
      return Tween<Offset>(
        begin: Offset(10, -8),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ));
    }).toList();
  }

  @override
  void dispose() {
    // Dispose all the controllers
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onCategoryTap(String label) {
    // Handle category tap
    print('Tapped on $label');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 3.1, // Adjust aspect ratio as needed
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return AnimatedBuilder(
            animation: _animations[index],
            builder: (context, child) {
              return SlideTransition(
                position: _animations[index],
                child: GestureDetector(
                  onTap: () => _onCategoryTap(category["label"]!), // Call the onTap function
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(1.6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 4, bottom: 4),
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(category["icon"]!), // Access the icon here
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        textAlign: TextAlign.center,
                        category["label"]!, // Access the label here
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
