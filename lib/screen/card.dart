import 'package:flutter/material.dart';
import 'package:flutter_application_5/widget/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Card Text'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'Kakashi Hatake',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRujTiMmltauVVsrBWY6yAplFoCgb12_wG886oOTUIf39ilUwu47lqmLlzoWQvbvJsXtiw&usqp=CAU',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://cdn2.unrealengine.com/fortnite-naruto-kakashi-hatake-1920x1080-dc47a6ea43e3.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwv29_fBB6mgGgk19l5foOEUJM6JIPLPp54Y33QJ8rPO58QcbBWXsHG6jCVMx3EdCov-0&usqp=CAU',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZCChXNFQWGNqaGZm0R7VM83UMCCxZxU_HFw&usqp=CAU',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
