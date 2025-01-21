import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtab_tech/card.dart';

// Define color variables
const Color primaryColor = Color(0xFF745DD7);
const Color backgroundColor = Colors.grey;
const Color mapTextColor = Colors.black54;
const Color floatingIconColor = Colors.white;
const Color bottomSheetBackgroundColor = Colors.white;
const Color dragHookColor = Colors.black;
const Color tabSelectedLabelColor = Colors.black;
const Color tabUnselectedLabelColor = Colors.grey;
const Color tabIndicatorColor = Colors.black;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Map Section
            Positioned.fill(
              child: Container(
                color: backgroundColor, // Placeholder for map background
                child: Center(
                  child: Text(
                    "Map Placeholder",
                    style: TextStyle(
                      color: mapTextColor,
                      fontSize: screenHeight * 0.02, // Responsive font size
                    ),
                  ),
                ),
              ),
            ),

            // Floating Buttons
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.05,
              child: Container(
                width: screenHeight * 0.05,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.menu_outlined,
                  size: screenHeight * 0.035, // Responsive icon size
                  color: floatingIconColor,
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              right: screenWidth * 0.05,
              child: Container(
                width: screenHeight * 0.05,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.bell_solid,
                  size: screenHeight * 0.035, // Responsive icon size
                  color: floatingIconColor,
                ),
              ),
            ),

            // Draggable Bottom Sheet
            DraggableScrollableSheet(
              initialChildSize: 0.4, // Start at 40% height
              minChildSize: 0.2, // Minimum height
              maxChildSize: 0.8, // Maximum height
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: bottomSheetBackgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                          screenHeight * 0.03), // Responsive radius
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: backgroundColor.withOpacity(0.5),
                        blurRadius: screenHeight * 0.01,
                        spreadRadius: screenHeight * 0.002,
                        offset: Offset(0, -screenHeight * 0.005),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Hook for dragging
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                        child: Container(
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.003,
                          decoration: BoxDecoration(
                            color: dragHookColor,
                            borderRadius:
                                BorderRadius.circular(screenHeight * 0.01),
                          ),
                        ),
                      ),

                      // Bottom Sheet Content
                      Expanded(
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.04),
                            child: Column(
                              children: [
                                // Buttons
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor,
                                        foregroundColor:
                                            bottomSheetBackgroundColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              screenHeight *
                                                  0.03), // Responsive radius
                                        ),
                                      ),
                                      child: Text(
                                        "Get a ride",
                                        style: TextStyle(
                                          fontSize: screenHeight *
                                              0.02, // Responsive font size
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor,
                                        foregroundColor:
                                            bottomSheetBackgroundColor,
                                        side: BorderSide(color: primaryColor),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              screenHeight *
                                                  0.03), // Responsive radius
                                        ),
                                      ),
                                      child: Text(
                                        "Offer a ride",
                                        style: TextStyle(
                                          fontSize: screenHeight *
                                              0.02, // Responsive font size
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.02),

                                // Tab View Section
                                DefaultTabController(
                                  length: 2,
                                  child: Column(
                                    children: [
                                      TabBar(
                                        labelColor: tabSelectedLabelColor,
                                        unselectedLabelColor:
                                            tabUnselectedLabelColor,
                                        indicatorColor: tabIndicatorColor,
                                        tabs: [
                                          Tab(
                                            child: Text(
                                              "Latest Schedules",
                                              style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.018),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "Latest Requests",
                                              style: TextStyle(
                                                  fontSize:
                                                      screenHeight * 0.018),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight *
                                            0.5, // Responsive height
                                        child: TabBarView(
                                          children: [
                                            // Latest Schedules Tab
                                            ListView.builder(
                                              controller: scrollController,
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return RideCard(
                                                  from: "Dayton",
                                                  to: "Denver Airport",
                                                  date: "24th April 2024",
                                                  time: "4:00 AM",
                                                  seats: 3,
                                                  contact: "+1 7213456789",
                                                  isSchedule: true,
                                                );
                                              },
                                            ),
                                            // Latest Requests Tab
                                            ListView.builder(
                                              controller: scrollController,
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return RideCard(
                                                  from: "Dayton",
                                                  to: "Denver Airport",
                                                  date: "24th April 2024",
                                                  time: "4:00 AM",
                                                  seats: 3,
                                                  contact: "+1 7213456789",
                                                  isSchedule: false,
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
