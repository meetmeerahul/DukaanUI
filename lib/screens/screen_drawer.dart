import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shoppingapp/screens/screen_list.dart';

class ScreenDrawer extends StatefulWidget {
  const ScreenDrawer({super.key});

  @override
  State<ScreenDrawer> createState() => _ScreenDrawerState();
}

class _ScreenDrawerState extends State<ScreenDrawer> {
  bool switchState = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Additional Informaltion'),

      
      ),
      body: ListView(children: [
        const ListTile(
          leading: Icon(Icons.share),
          title: Text('Share Dukaan App'),
          trailing: Icon(Icons.arrow_forward_ios),
          //onTap: () {},
        ),
        const ListTile(
          leading: Icon(Icons.abc),
          title: Text('Change Language'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        SwitchListTile(
          value: switchState,
          onChanged: (bool value) {
            setState(() {
              switchState = value; //update value when sitch changed
            });
          },
          title: const Text("Whatsapp Support"),
          secondary: Image.asset(
            'lib/icons/whatsapp.png',
            height: 30,
            width: 20,
            color: Colors.grey,
          ),
        ),
        const ListTile(
          leading: Icon(Icons.lock),
          title: Text('Privacy Policy'),
        ),
        const ListTile(
          leading: Icon(Icons.star_border),
          title: Text('Rate Us'),
        ),
        const ListTile(
          leading: Icon(Icons.logout),
          title: Text('Sign Out'),
        )
      ]),
    );
  }
}
