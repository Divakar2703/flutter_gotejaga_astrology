import 'package:flutter/material.dart';

class AstrologerHomeWidget extends StatefulWidget {
  const AstrologerHomeWidget({super.key});

  @override
  State<AstrologerHomeWidget> createState() => _BestInAstrologerHomeWidgetState();
}

class _BestInAstrologerHomeWidgetState extends State<AstrologerHomeWidget> {
  final List<Map<String, dynamic>> bestInRestaurant = [
    {
      "image": 'assets/images/pandit_one.png',
      "disName": 'Rahul Jain',
      "rating": '4.5',
      "price": "Rs. 213.00",
      "disprice": "Rs. 173.00",
      "isVegetarian": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: bestInRestaurant.map((pick) {
        return Card(
          margin: const EdgeInsets.only(left: 12, right: 12, top: 8),
          elevation: 2,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 130,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(pick["image"]), // Use the dynamic image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Card(
                          elevation: 4,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow.shade700,size: 18,),
                                Text(
                                  " 4.6",
                                  maxLines: 1, // Limit to 2 lines
                                  overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pick["disName"], // Use the dynamic restaurant name
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(height: 8),
                            // Your existing information goes here
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.menu_book_rounded, color: Colors.black54, size: 25),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "Vasthu consultation, VedicAstrology",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Icon(Icons.add, color: Colors.blue, size: 15),
                                    ),
                                    Expanded(
                                      child: Text(
                                        " 2 more ",
                                        maxLines: 1, // Limit to 2 lines
                                        overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.language, color: Colors.black54, size: 22),
                                    Text(
                                      "   English,Hindi  ",
                                      maxLines: 1, // Limit to 2 lines
                                      overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Icon(Icons.add, color: Colors.blue, size: 15),
                                    Expanded(
                                      child: Text(
                                        " 4 more ",
                                        maxLines: 1, // Limit to 2 lines
                                        overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.align_vertical_top, color: Colors.black54, size: 18),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        "8 Years ",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee, color: Colors.black54, size: 18),
                                    Text(
                                      "  30/min  ",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 0), // Space before buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton(Icons.message_outlined, "Chat", Colors.green.shade600, 3),
                    _buildButton(Icons.call, "call", Colors.green.shade600, 3),
                    _buildButton(Icons.video_camera_front_outlined, "Video call", Colors.red.shade400, 3),
                  ],
                ),
                const SizedBox(height: 10), // Space before buttons

              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildButton(IconData icon, String label, Color textColor, double elevation) {
    return ElevatedButton(
      onPressed: () {
        // Define your button action here
      },
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Set border radius to 20
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        backgroundColor: Colors.white, // Set background color to white for better visibility
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: textColor), // Icon with specified color
          const SizedBox(width: 5), // Space between icon and text
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: textColor, // Text color based on button
            ),
          ),
        ],
      ),
    );
  }
}
