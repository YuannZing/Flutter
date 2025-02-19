import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:pjbl3/page/home_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  late GroupButtonController _checkboxesController;
  late GroupButtonController _radioController;

  final _checkboxButtons = [
    'Michael Jordan',
    'Magic Johnson',
    'LeBron James',
    'Kareem Abdul-Jabbar',
    'Wilt Chamberlain',
    'Larry Bird',
  ];

  final _radioButtons = [
    'Cola',
    'Potato chips',
    'Pudding',
  ];

  @override
  void initState() {
    _checkboxesController = GroupButtonController(
      selectedIndexes: [2],
      disabledIndexes: [4],
      onDisablePressed: (index) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${_checkboxButtons[index]} is disabled')),
      ),
    );

    _radioController = GroupButtonController(
      selectedIndexes: [1],
      disabledIndexes: [2, 3],
      onDisablePressed: (index) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${_radioButtons[index]} is disabled')),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const HomePage(),
      appBar: AppBar(
        title: const Text(
          'GroupButton 5.0.0',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Checkbox buttons',
              style: theme.textTheme.headlineSmall,
            ),
          ),
          GroupButton(
            controller: _checkboxesController,
            isRadio: false,
            options: const GroupButtonOptions(
              groupingType: GroupingType.column,
            ),
            buttons: _checkboxButtons,
            buttonIndexedBuilder: (selected, index, context) {
              return CheckBoxTile(
                title: _checkboxButtons[index],
                selected: selected,
                onTap: () {
                  if (!selected) {
                    _checkboxesController.selectIndex(index);
                    return;
                  }
                  _checkboxesController.unselectIndex(index);
                },
              );
            },
            onSelected: (val, i, selected) =>
                debugPrint('Button: $val index: $i $selected'),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Radio buttons',
              style: theme.textTheme.headlineSmall,
            ),
          ),
          GroupButton(
            controller: _radioController,
            isRadio: true,
            options: const GroupButtonOptions(groupingType: GroupingType.column),
            buttons: _radioButtons,
            buttonIndexedBuilder: (selected, index, context) {
              return RadioTile(
                title: _radioButtons[index],
                selected: _radioController.selectedIndex,
                index: index,
                onTap: () {
                  _radioController.selectIndex(index);
                },
              );
            },
            onSelected: (val, i, selected) =>
                debugPrint('Button: $val index: $i $selected'),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Text builder example',
              style: theme.textTheme.headlineSmall,
            ),
          ),
          GroupButton(
            controller: _radioController,
            isRadio: true,
            options: const GroupButtonOptions(groupingType: GroupingType.wrap),
            buttons: _radioButtons,
            buttonIndexedTextBuilder: (selected, index, context) =>
                '${_radioButtons[index]} [built]',
            onSelected: (val, i, selected) =>
                debugPrint('Button: $val index: $i $selected'),
          ),
        ],
      ),
    );
  }
}

class RadioTile extends StatelessWidget {
  const RadioTile({
    super.key,
    required this.selected,
    required this.onTap,
    required this.index,
    required this.title,
  });

  final String title;
  final int index;
  final int? selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      leading: Radio<int>(
        groupValue: selected,
        value: index,
        onChanged: (val) {
          onTap();
        },
      ),
    );
  }
}

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile({
    super.key,
    required this.selected,
    required this.onTap,
    required this.title,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      leading: Checkbox(
        value: selected,
        onChanged: (val) {
          onTap();
        },
      ),
    );
  }
}
