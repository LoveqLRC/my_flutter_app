import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget {
  static const String routeName = '/material/bottom_app_bar';

  @override
  State<StatefulWidget> createState() {
    return _BottomAppBarDemoState();
  }
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  static const _ChoiceValue<Widget> KNoFab = _ChoiceValue<Widget>(
      title: 'None',
      label: 'do not show a floating action button',
      value: null);

  static const _ChoiceValue<Widget> kCircularFab = _ChoiceValue<Widget>(
      title: 'Circular',
      label: 'circular floating action button',
      value: FloatingActionButton(
        onPressed: _showSnackbar,
        child: Icon(
          Icons.add,
          semanticLabel: "Action",
        ),
        backgroundColor: Colors.orange,
      ));

  static const _ChoiceValue<Widget> kDiamondFab = _ChoiceValue<Widget>(
    title: 'Diamond',
    label: 'diamond shape floating action button',
    value: _DiamondFab(
      onPressed: _showSnackbar,
      child: Icon(Icons.add, semanticLabel: 'Action'),
    ),
  );

  static const _ChoiceValue<bool> kShowNotchTrue = _ChoiceValue<bool>(
      title: 'On', label: 'show bottom appbar notch', value: true);

  static const _ChoiceValue<bool> kShowNotchFalse = _ChoiceValue<bool>(
      title: 'Off', label: 'do not show bottom appbar notch ', value: false);

  static const _ChoiceValue<FloatingActionButtonLocation> kFabEndDocked =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Attached - End',
    label: 'floating action button is docked at the end of the bottom app bar',
    value: FloatingActionButtonLocation.endDocked,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabCenterDocked =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Attached - Center',
    label:
        'floating action button is docked at the center of the bottom app bar',
    value: FloatingActionButtonLocation.centerDocked,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabEndFloat =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Free - End',
    label: 'floating action button floats above the end of the bottom app bar',
    value: FloatingActionButtonLocation.endFloat,
  );

  static const _ChoiceValue<FloatingActionButtonLocation> kFabCenterFloat =
      _ChoiceValue<FloatingActionButtonLocation>(
    title: 'Free - Center',
    label:
        'floating action button is floats above the center of the bottom app bar',
    value: FloatingActionButtonLocation.centerFloat,
  );

  static void _showSnackbar() {
    const String text =
        "When the Scaffold's floating action button location changes, "
        'the floating action button animates to its new position.'
        'The BottomAppBar adapts its shape appropriately.';
    _scaffoldKey.currentState.showSnackBar(
      const SnackBar(content: Text(text)),
    );
  }

  static const List<_NamedColor> kBabColors = <_NamedColor>[
    _NamedColor(null, 'Clear'),
    _NamedColor(Color(0xFFFFC100), 'Orange'),
    _NamedColor(Color(0xFF91FAFF), 'Light Blue'),
    _NamedColor(Color(0xFF00D1FF), 'Cyan'),
    _NamedColor(Color(0xFF00BCFF), 'Cerulean'),
    _NamedColor(Color(0xFF009BEE), 'Blue'),
  ];

  _ChoiceValue<Widget> _fabShape = kCircularFab;
  _ChoiceValue<bool> _showNotch = kShowNotchTrue;
  _ChoiceValue<FloatingActionButtonLocation> _fabLocation = kFabEndDocked;
  Color _babColor = kBabColors.first.color;

  void _onShowNotchChanged(_ChoiceValue<bool> value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onFabShapeChanged(_ChoiceValue<Widget> value) {
    setState(() {
      _fabShape = value;
    });
  }

  void _onFabLocationChanged(_ChoiceValue<FloatingActionButtonLocation> value) {
    setState(() {
      _fabLocation = value;
    });
  }

  void _onBabColorChanged(Color value) {
    setState(() {
      _babColor = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Bottom app bar'),
        elevation: 0.0,
        //TODO add action
        actions: <Widget>[],
      ),
      body: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 88.0),
          children: <Widget>[
            const _Heading('FAB Shape'),
            _RadioItem<Widget>(kCircularFab, _fabShape, _onFabShapeChanged),
            _RadioItem<Widget>(kDiamondFab, _fabShape, _onFabShapeChanged),
          ],
        ),
      ),
    );
  }
}

class _ChoiceValue<T> {
  const _ChoiceValue({this.value, this.title, this.label});

  final T value;
  final String title;
  final String label; // For the Semantics widget that contains title

  @override
  String toString() => '$runtimeType("$title")';
}

class _DiamondFab extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const _DiamondFab({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const _DiamondBorder(),
      color: Colors.orange,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 56.0,
          height: 56.0,
          child: IconTheme(
              data:
                  IconThemeData(color: Theme.of(context).accentIconTheme.color),
              child: child),
        ),
      ),
    );
  }
}

class _DiamondBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only();

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  const _DiamondBorder();
}

class _NamedColor {
  final Color color;
  final String name;

  const _NamedColor(this.color, this.name);
}

class _Heading extends StatelessWidget {
  final String text;

  const _Heading(this.text);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      height: 48.0,
      padding: const EdgeInsetsDirectional.only(start: 56.0),
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        text,
        style: theme.textTheme.body1.copyWith(color: theme.primaryColor),
      ),
    );
  }
}

class _RadioItem<T> extends StatelessWidget {
  final _ChoiceValue<T> value;
  final _ChoiceValue<T> groupValue;
  final ValueChanged<_ChoiceValue<T>> onChanged;

  const _RadioItem(this.value, this.groupValue, this.onChanged);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: 56.0,
      padding: const EdgeInsetsDirectional.only(start: 16.0),
      alignment: AlignmentDirectional.centerStart,
      child: MergeSemantics(
        child: Row(
          children: <Widget>[
            Radio<_ChoiceValue<T>>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
            Expanded(
              child: Semantics(
                container: true,
                button: true,
                label: value.label,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    onChanged(value);
                  },
                  child: Text(
                    value.title,
                    style: theme.textTheme.subhead,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
