import 'package:flutter/material.dart';
import 'package:ch13_local_persistence/classes/database.dart';
import 'package:intl/intl.dart'; // To format dates
import 'dart:math';// Random() numbers

class EditEntry extends StatefulWidget {
  const EditEntry({Key? key, required this.add, required this.index, required this.journalEdit}) : super(key: key);
  final bool add;
  final int index;
  final JournalEdit journalEdit;

  @override
  State<EditEntry> createState() => _EditEntryState();
}

class _EditEntryState extends State<EditEntry> {
  JournalEdit _journalEdit;
  String _title;
  DateTime _selectedDate;
  TextEditingController _moodController =
      TextEditingController();
  TextEditingController _noteController =
      TextEditingController();
  FocusNode _moodFocus = FocusNode();
  FocusNode _noteFocus = FocusNode();
  @override
  void initState() {
    super.initState();

    _journalEdit = JournalEdit(action: 'Cancel', journal: widget.journalEdit.journal);
    _title = widget.add ? 'Add' : 'Edit';
    _journalEdit.journal = widget.journalEdit.journal;
    if (widget.add) {
      _selectedDate = DateTime.now();
      _moodController.text = '';
      _noteController.text = '';
    } else {
      _selectedDate =
          DateTime.parse(_journalEdit.journal.date);
      _moodController.text = _journalEdit.journal.mood;
      _noteController.text = _journalEdit.journal.note;
    }
  }
  @override
  dispose() {
    _moodController.dispose();
    _noteController.dispose();
    _moodFocus.dispose();
    _noteFocus.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


