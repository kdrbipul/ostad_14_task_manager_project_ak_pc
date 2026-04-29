import 'package:flutter/material.dart';
import 'package:ostad_14_task_manager_project_ak_pc/screens/progress_task_screen.dart';

import 'cancel_task_screen.dart';
import 'complete_task_screen.dart';
import 'new_task_screen.dart';
class MainNavigationHolderScreen extends StatefulWidget {
  const MainNavigationHolderScreen({super.key});

  @override
  State<MainNavigationHolderScreen> createState() => _MainNavigationHolderScreenState();
}

class _MainNavigationHolderScreenState extends State<MainNavigationHolderScreen> {

  int _selectedIndex = 0;

static const List<Widget> _screens = [
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompleteTaskScreen(),
    CancelTaskScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.task), label: 'New'),
          NavigationDestination(icon: Icon(Icons.add_task), label: 'Progress'),
          NavigationDestination(icon: Icon(Icons.task_alt_outlined), label: 'Complete'),
          NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
        ],
      ),
    );
  }
}
