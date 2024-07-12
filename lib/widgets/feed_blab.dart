import 'package:flutter/material.dart';
import 'package:verademo_dart/utils/constants.dart';

class FeedBlabs extends StatelessWidget
{
  final List <String> blabname;

  const FeedBlabs(this.blabname,{super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      textColor: VConstants.veracodeWhite,

      child: ListView(
        
        children: buildItemList()
      ),
    );
  }

  List<Widget> buildItemList()
  {
    List<Widget> items = [];
    for (int i=0; i<blabname.length; i++)
    {
      items.add(buildListItem(blabname[i]));
    }
    return items;
  }

  Widget buildListItem(String title) {
    String name = title.toLowerCase();
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage('assets/images/$name.png'),
        backgroundImage: const AssetImage('assets/images/default_profile.png'),

        ),
      title: Text(title),
      trailing: Checkbox(
        value: true,
        onChanged: (bool? value) {},
      ),
    );
  }
  
}