import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// Define color variables
const Color primaryColor = Color(0xFF745DD7);
const Color secondaryColor = Colors.grey;
const Color textColor = Colors.black;

class RideCard extends StatelessWidget {
  final String from;
  final String to;
  final String date;
  final String time;
  final int seats;
  final String contact;
  final bool isSchedule;

  const RideCard({
    required this.from,
    required this.to,
    required this.date,
    required this.time,
    required this.seats,
    required this.contact,
    required this.isSchedule,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              right: screenWidth * 0.04,
              left: screenWidth * 0.04),
          child: DottedBorder(
            color: secondaryColor, // Use color variable
            strokeWidth: 1, // Thickness of the dashed line
            dashPattern: [6, 3], // Length of dashes and gaps
            borderType: BorderType.RRect,
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "From: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: "$from → ",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: "To: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.02,
                          ),
                        ),
                        TextSpan(
                          text: "$to",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.02,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Date: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "$date   ",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "Time: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "$time",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Seats: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "$seats   ",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "Contact: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                        TextSpan(
                          text: "$contact",
                          style: TextStyle(
                            color: primaryColor, // Use color variable
                            fontSize: screenHeight * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'see more..',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: primaryColor, // Use color variable
                          fontSize: screenHeight * 0.018,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        Divider(
          color: textColor, // Use color variable
          thickness: 1,
          indent: screenWidth * 0.04,
          endIndent: screenWidth * 0.04,
        ),
      ],
    );
  }
}
