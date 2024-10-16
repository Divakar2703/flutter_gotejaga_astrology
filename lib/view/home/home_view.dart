import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'components/astrologer_home_widget.dart';
import 'components/banner_slider.dart';
import 'components/daily_horr_and_free_kundali_widget.dart';
import 'components/live_astrologers_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _NewHomeViewState();
}

class _NewHomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: primaryColor, // Set to transparent
                expandedHeight: 110.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/top_bar.png'),
                        alignment: Alignment.topCenter, // Aligns image to the top
                        fit: BoxFit.none, // Keeps original size without scaling
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 4, top: 30,left: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu_rounded,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      // Add your onPressed code here!
                                    },
                                  ),
                                  Text(
                                    "Gote jaga astrology",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet_outlined,
                                    size: 28.0,
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.notifications_none_rounded,
                                      size: 28.0,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      // Add your onPressed code here!
                                    },
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(12.0),
                  child: Container(
                    margin: EdgeInsets.only(right: 12, top: 12, bottom: 8, left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(12.0),
                      child: Container(
                        height: 44.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.grey.shade200,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search Astrologers',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Icon(
                                      Icons.search_outlined,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(11.0),
                                    child: Icon(
                                      Icons.mic,
                                      color: primaryColor,
                                      size: 21,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: 10,),
                    DailyHorrAndFreeKundaliWidget(),


                  const BannerSlider(),

                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Live Astrologers",
                            style: TextStyle(
                              fontSize: 16.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SeeAllNewScreen()),
                              // );
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: lightPrimaryColor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    LiveAstrologersWidget(),

                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "On Top Astrologers",
                            style: TextStyle(
                              fontSize: 16.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SeeAllNewScreen()),
                              // );
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: lightPrimaryColor,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                    AstrologerHomeWidget(),

                    AstrologerHomeWidget(),
                    AstrologerHomeWidget(),

                    SizedBox(height: 50,),


                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
