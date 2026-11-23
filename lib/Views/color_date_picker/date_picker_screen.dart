import 'package:flutter/material.dart';

class DatePickerScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {

  DateTime selectedDate = DateTime.now();

  Future<void> pickDate() async {
    final DateTime? pickedDate = await showDatePicker(

      context: context,

      initialDate: selectedDate,

      firstDate: DateTime(2020), 
      lastDate: DateTime(2035)
    );

    if (pickedDate != null) {

      setState(() {
        
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Date Picker Screen"),
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Text(
              "Selected Date: "
              "${selectedDate.day}/"
              "${selectedDate.month}/"
              "${selectedDate.year}",
              style: TextStyle(
                fontSize: 20
              ),
            ),

            SizedBox(height: 20,),
        
            ElevatedButton.icon(
              onPressed: pickDate,
              icon: Icon(Icons.calendar_month),
              label: Text("pick date")
            ),
        
          ],
        ),
      ),
    );
  }
}

