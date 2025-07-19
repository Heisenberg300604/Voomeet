import 'package:flutter/material.dart';
import 'package:zoom_clone/widgets/home_meeting_button.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page){
    setState(() {
      _page = page;
    });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet and Chat'),
        centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(onPressed: (){}, icon: Icons.videocam, text: 'New Meeting'),
              HomeMeetingButton(onPressed: (){}, icon: Icons.add_box_rounded, text: 'Join Meeting'),
              HomeMeetingButton(onPressed: (){}, icon: Icons.calendar_today, text: 'Schedule'),
              HomeMeetingButton(onPressed: (){}, icon: Icons.arrow_upward_rounded, text: 'Share Screen'),
            ],
          ),
          const Expanded(child: Center(child: Text('Create/Join Meetings with just a click', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.comment_bank_outlined), label: 'Meet and Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
