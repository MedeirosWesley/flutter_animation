import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ["Trabalho", "Estudos", "Casa"];
  int _category = 0;
  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          disabledColor: Colors.white30,
          onPressed: _category > 0 ? selectBackward : null,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        Text(
          categories[_category],
          style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
        IconButton(
          disabledColor: Colors.white30,
          onPressed: _category < categories.length - 1 ? selectForward : null,
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
        ),
      ],
    );
  }
}
