import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final String titleCard;
  const CustomCards({
    super.key,
    required this.titleCard,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
          // height: 360,
          child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 3,
        margin: EdgeInsets.zero,
        child: Column(
          children: [
            Hero(
                tag: 'tag',
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/300x300.png',
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(titleCard),
            )
          ],
        ),
      )),
    );
  }
}
