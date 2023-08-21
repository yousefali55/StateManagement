import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});
  @override
  State<FilterBar> createState() => _FilterBarState();
}
class _FilterBarState extends State<FilterBar> {
  int selectedIndex = -1;
  final List<String> filterOptions = ['التنفيذ', 'الملغية', 'المكتملة', 'تحت المراجعة', 'تمت'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FilterApp"),
      ),
      body: Container(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filterOptions.length,
          itemBuilder: (context, index) {
            final text = filterOptions[index];
            return Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedIndex == index ? Colors.blue : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(text),
              ),
            );
          },
        ),
      ),
    );
  }
}
