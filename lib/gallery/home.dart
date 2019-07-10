import 'package:flutter/material.dart';
import 'demos.dart';

const Color _kFlutterBlue = Color(0xFF003D75);

class GalleryHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

class _GalleryHomeState extends State<GalleryHome>
    with SingleTickerProviderStateMixin {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  AnimationController _controller;
  GalleryDemoCategory _category;

  static Widget _topHomeLayout(
      Widget currentChild, List<Widget> previousChildren) {
    List<Widget> children = previousChildren;
    if (currentChild != null) {
      //..是级联操作
      children = children.toList()..add(currentChild);
    }
    return Stack(
      children: children,
      alignment: Alignment.topCenter,
    );
  }

  static const AnimatedSwitcherLayoutBuilder _centerHomeLayout =
      AnimatedSwitcher.defaultLayoutBuilder;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(microseconds: 600),
      debugLabel: 'preview banner',
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final bool centerHome = mediaQuery.orientation == Orientation.portrait &&
        mediaQuery.size.height < 800.0;

    const Curve switchOutCurve =
        Interval(0.4, 1.0, curve: Curves.fastOutSlowIn);
    const Curve switchInCurve = Interval(0.4, 1.0, curve: Curves.fastOutSlowIn);

    Widget home = Scaffold(
      key: _scaffoldKey,
      backgroundColor: isDark ? _kFlutterBlue : theme.primaryColor,
      body: SafeArea(
          bottom: false,
          child: WillPopScope(
            onWillPop: () {
              if (_category != null) {
                setState(() {
                  _category = null;
                });
                return Future<bool>.value(false);
              }
              return Future<bool>.value(true);
            },
            //TODO update
            child: BackDrop(),
          )),
    );

    return null;
  }
}
