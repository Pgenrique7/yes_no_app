import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/chat/chat_screen.dart';
import 'package:yes_no_app/presentation/provider/chat_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        theme: AppTheme(selectedColor: 2).theme(),
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        home: const ChatScreen(),
      ),
    );
  }
}
