import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;
  AnimatedListView({required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Todos os dias",
          image: AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Todos os dias",
          image: AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 0,
        )
      ],
    );
  }
}
