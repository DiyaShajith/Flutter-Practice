import 'package:flutter/material.dart';

class Timepickerex extends StatefulWidget {
  const Timepickerex({super.key});

  @override
  State<Timepickerex> createState() => _TimepickerexState();
}

class _TimepickerexState extends State<Timepickerex> {
  TimeOfDay _Time=const TimeOfDay(hour: 7, minute: 30);
  void selectTime()async
  {
    final  newTime= await showTimePicker(context: context, initialTime: _Time);
    if(newTime!=null)
      {
        setState(() {
          _Time=newTime;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              InkWell(onTap: selectTime,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.punch_clock_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select a Time",
                            style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            _Time.format(context),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
