import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 6, right: 6, bottom: 6),
          visualDensity: VisualDensity(vertical: 1),
          minLeadingWidth: 10,
          leading: Container(
            height: 55,
            width: 51,
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://militaryhealthinstitute.org/wp-content/uploads/sites/37/2019/10/blank-person-icon-9.jpg'),
                  radius: 25.0,
                ),
                Positioned(
                  top: 30,
                  left: 29,
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
          title: Text('My status',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          subtitle: Text('Tap to add status update',
              style: TextStyle(color: Colors.white60)),
          // trailing: Icon(Icons.more_horiz,color: Colors.white60),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 270),
          child: Text(
            'Recent updates',
            style:
            TextStyle(color: Colors.white60),
          ),
        ),
      ],
    );
  }
}
