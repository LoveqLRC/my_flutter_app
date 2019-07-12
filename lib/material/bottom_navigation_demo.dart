import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationDemoState();
  }
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation"),
      ),
    );
  }
}

class NavigationIconView {
  final Widget _icon;
  final Color _color;
  final String _title;
  final BottomNavigationBarItem item;
  final AnimationController controller;
  Animation<double> _animation;

  NavigationIconView(
      {
        Widget icon,
        Widget activeIcon,
        String title,
        Color color,
        TickerProvider vsync,
      }):
        _icon = icon,
        _color = color,
        _title = title,
        item = BottomNavigationBarItem(
          icon: icon,
          activeIcon: activeIcon,
          title: Text(title),
          backgroundColor: color
        ),
        controller = AnimationController(
          duration:  kThemeAnimationDuration,
          vsync: vsync
        ){
    _animation = controller.drive(CurveTween(curve: const Interval(0.5, 1.0,curve: Curves.fastOutSlowIn)));
  }


}
