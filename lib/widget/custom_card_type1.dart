import 'package:flutter/material.dart';
import 'package:flutter_application_5/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.book_outlined,
              color: AppTheme.primary,
            ),
            title: const Text(
              'This is the title',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'Ex mollit adipisicing adipisicing do ad culpa esse duis fugiat cupidatat cillum consequat voluptate est.',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
