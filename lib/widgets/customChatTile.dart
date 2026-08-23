import 'package:flutter/material.dart';

customChatTile({
  required name,
  required message,
  required color,
  required time,
}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
        "https://cdn.pixabay.com/photo/2026/01/15/07/27/autumn-bend-10069119_1280.jpg",
      ),
    ),
    title: Text(name),
    subtitle: Text(message),
    tileColor: Colors.grey,
    trailing: Text(time),
  );
}
