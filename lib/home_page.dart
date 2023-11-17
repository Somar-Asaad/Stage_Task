import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isExpandedGroups = false;
  bool isExpandedFriends = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;
    int officialAccountsNumber = 0;

    void toggleExpansionGroups() {
      setState(() {
        isExpandedGroups = !isExpandedGroups;
      });
    }
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          actionsIconTheme: const IconThemeData(color: Colors.white),
          actions: [
            const Icon(
              Icons.bookmark_border,
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            const Icon(
              Remix.notification_2_line,
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            const Icon(
              Remix.user_add_line,
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            const Icon(
              Remix.settings_2_line,
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daniel Harris',
                          style: textTheme.displayLarge,
                        ),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text('Enter a status message',
                            style: textTheme.headlineLarge),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.lightBlue.shade50,
                      child: const Icon(
                        Icons.person_outline_rounded,
                        color: Colors.white,
                        size: 30,
                        weight: 22,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 5, 8),
                        child: Icon(
                          Icons.search,
                          size: 19,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Add functionality for the scan icon here
                        },
                        icon: Icon(
                          Remix.qr_scan_2_line,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Services',
                      style: textTheme.displayMedium,
                    ),
                    Text(
                      'See all',
                      style: textTheme.headlineMedium,
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconBuilder(
                      text: 'Stickers',
                      icon: Remix.emotion_happy_line,
                      textTheme: textTheme.headlineSmall!,
                      screenHeight: screenHeight,
                    ),
                    iconBuilder(
                      text: 'Themes',
                      icon: Icons.format_paint,
                      textTheme: textTheme.headlineSmall!,
                      screenHeight: screenHeight,
                    ),
                    iconBuilder(
                      text: 'Official\nAccounts',
                      icon: Remix.shield_star_line,
                      textTheme: textTheme.headlineSmall!,
                      screenHeight: screenHeight,
                    ),
                    iconBuilder(
                      text: 'LINE GAME',
                      icon: Remix.gamepad_line,
                      textTheme: textTheme.headlineSmall!,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                GestureDetector(
                  onTap: () {
                    toggleExpansionGroups();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Groups',
                        style: textTheme.displayMedium,
                      ),
                      Icon(
                          isExpandedGroups
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 24.0,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                   setState(() {
                     isExpandedFriends=!isExpandedFriends;
                   });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Friends',
                        style: textTheme.displayMedium,
                      ),
                      Icon(
                        isExpandedFriends == true
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 24.0, // Adjust
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.green.shade300,
                          child: const Icon(
                            Remix.shield_star_line,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.04,
                        ),
                        Text(
                          'Official accounts',
                          style: textTheme.displayMedium!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          officialAccountsNumber.toString(),
                          style: textTheme.headlineMedium!.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey.shade700,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  'Ready to add friends?',
                  style: textTheme.displayMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.007,
                ),
                Text(
                  'Add friends by QR code or Search.',
                  style: textTheme.headlineMedium,
                ),
                SizedBox(
                  height: screenHeight * 0.014,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Colors.black,
                    side: BorderSide(
                      color: Colors.grey.shade800,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add friends',
                    style: textTheme.displayMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column iconBuilder({
    required String text,
    required IconData icon,
    required double screenHeight,
    required TextStyle textTheme,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        SizedBox(
          height: screenHeight * 0.008,
        ),
        Text(
          text,
          style: textTheme,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
