import 'package:flutter/material.dart';


/// comentarios de branch yt_Appbar
class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leftWidget;
  final Function leftFunction;
  final Widget title;
  final Alignment titleAlignment;
  final Widget rightWidget;
  final Function rightFunction;

  const MyAppbar({
    Key key,
    this.leftWidget,
    this.leftFunction,
    @required this.title,
    this.titleAlignment,
    this.rightWidget,
    this.rightFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: InkWell(
              onTap: leftFunction ?? () => Navigator.pop(context),
              child: Container(
                child: leftWidget ?? Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container( alignment: titleAlignment ?? Alignment.center, child: title),
          ),
          Expanded(
            flex: 4,
            child: InkWell(
              onTap: rightFunction,
              child: Container(
                child: rightWidget,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
