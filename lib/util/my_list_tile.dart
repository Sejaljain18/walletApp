import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;
  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle, required this.tileSubTitle,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // icon
          Container(
            height:50,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color:Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child:Image.asset(iconImagePath),
          ),
          const SizedBox(height:20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                tileTitle ,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                tileSubTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color:Colors.grey,
                ),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
