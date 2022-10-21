import 'package:flutter/material.dart';

class RehabHistoryCard extends StatelessWidget {
  const RehabHistoryCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        data["image"],
        width: 60,
        height: 60,
      ),
      title: Row(
        children: [
          Icon(
            Icons.watch_later_outlined,
            size: 20,
            color: Colors.grey.shade700,
          ),
          const SizedBox(width: 5),
          Text(
            data["time"],
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.calendar_today,
            size: 20,
            color: Colors.grey.shade700,
          ),
          const SizedBox(width: 5),
          Text(
            data["date"],
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      trailing: data["completed"] == true
          ? TextButton(
              onPressed: () {},
              child: Text(
                "View Results",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                "Missed, 2 of 3",
                style:  TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}

