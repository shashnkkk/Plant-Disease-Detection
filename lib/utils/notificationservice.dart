import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Initialize local notifications
  initialise() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('PlantHealth');
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  // Send an instant notification
  instantNotification(String text, String body, String alert) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      '$text',
      '$body',
      platformChannelSpecifics,
      payload: 'item x',
    );
    addData(text, body,
        alert); // You can still add this for local data storage or other logic
  }

  // Removed Firestore call, now it's just a placeholder
  addData(String title, String body, String type) async {
    // Add a placeholder or alternative data handling logic here, if needed
    print('Notification Added: Title: $title, Body: $body, Type: $type');
    // Optionally, save locally or use another service to store notification data
  }
}
