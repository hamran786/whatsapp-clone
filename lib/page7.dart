import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(vertical:4),
      leading: Container(
        height: 60,
        width: 65,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              height: 51,
              width: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xFF647780),
              ),
              child: Icon(Icons.groups, color: Color(0xFFd2d6da), size: 40),
            ),
            Positioned(
              top: 31,left: 35,
              child: Container(
                height: 23,
                width: 23,
                // margin: EdgeInsets.only(top: 31, left: 35),
                decoration: BoxDecoration(
                    color: Color(0xFF01a885),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)),
                child: Icon(
                  size: 21,
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        'New community',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
