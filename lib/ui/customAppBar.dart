import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/AppBarTabs.dart';

class _CustomAppBarState extends State<CustomAppBar>{

  AppBarTabs _selectedTab = AppBarTabs.notes;

  void _selectTab(AppBarTabs newSelectedTab){
    setState(() {
      _selectedTab = newSelectedTab;
    });
  }

  @override
  Widget build(BuildContext context) {

    return AppBar(

      elevation: 0,
      backgroundColor: Colors.grey.shade100,
      surfaceTintColor: Colors.grey.shade100,

      leading: Spacer(),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        spacing: 48,

        children: [

          IconButton(
            onPressed: () => _selectTab(AppBarTabs.notes),
            icon: Icon(
                _selectedTab == AppBarTabs.notes
                    ? Icons.library_books_sharp
                    : Icons.library_books_outlined
            ),
            color: _selectedTab == AppBarTabs.notes
                ? Colors.amberAccent
                : Colors.grey,
          ),

          IconButton(
            onPressed: () => _selectTab(AppBarTabs.checklist),
            icon: Icon(
                _selectedTab == AppBarTabs.checklist
                    ? Icons.check_box
                    : Icons.check_box_outlined
            ),
            color: _selectedTab == AppBarTabs.checklist
                ? Colors.amberAccent
                : Colors.grey,
          )

        ],

      ),

      actions: [
        IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            )
        )
      ],

    );

  }

}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(50);

}