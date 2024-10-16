import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class BannerSlider extends StatelessWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0), // Adjust border radius as needed
      ),
      /// padding: EdgeInsets.all(8.0), // Adjust padding as needed
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: CarouselSlider(
          options: CarouselOptions(
            initialPage: 0, // Start from the first card
            viewportFraction: 0.9,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
          ),
          items: [
            'assets/images/banner_two.png',
            'assets/images/banner_two.png',
            'assets/images/banner_three.png',
          ].map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 6.0), // Adjust margin to create space between items
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), // Match the container's border radius
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
