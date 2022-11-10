import 'package:academy_client/academy/presentation/widgets/academy_list_tile.dart';
import 'package:academy_client/academy/presentation/widgets/academy_tag_widget.dart';
import 'package:flutter/material.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              children: [
                AcademyTagWidget(),
                AcademyTagWidget(
                  isActive: true,
                ),
                AcademyTagWidget(),
                AcademyTagWidget(),
                AcademyTagWidget(),
              ],
            ),
          ),
          Expanded(
              child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (_, i) {
              return Divider(
                color: Color(0xFFDDDDDD),
              );
            },
            itemBuilder: (_, i) {
              return AcademyListTile();
            },
          ))
        ],
      ),
    );
  }
}
