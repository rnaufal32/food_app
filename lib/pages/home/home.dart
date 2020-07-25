import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/pages/home/component/body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: HomeBody(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          horizontal: padding * 1.2,
          vertical: padding / 4,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: padding / 2,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                padding: EdgeInsets.all(padding / 2),
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(padding / 2),
                child: Icon(
                  Icons.credit_card,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(padding / 2),
                child: Icon(
                  Icons.chat_bubble,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(padding / 2),
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
      leading: Padding(
        padding: EdgeInsets.only(left: padding),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: padding),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
