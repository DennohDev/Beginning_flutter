import 'package:flutter/material.dart';
import 'birthdays.dart';
import 'gratitude.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with
SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_tabChanged);

    @override
    void dispose() {
      super.dispose();
      @override
      void dispose() {
        _tabController.dispose();
        super.dispose();
      }
      _tabController.dispose();
    }
    void _tabChanged() {
      // check if Tab controller index is changing,
      // otherwise we get the notice twice
      if (_tabController.indexIsChanging) {
        print('_tabChanged: ${_tabController.index}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: TabBarView( controller: _tabController,
          children: [
            Birthdays(),
            Gratitude(),
            Reminders(),
          ],
      )),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black54,
          unselectedLabelColor: Colors.black38,
          tabs: [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays',
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude',
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders',
            ),
          ],
        ),
      ),
    );
  }
}
