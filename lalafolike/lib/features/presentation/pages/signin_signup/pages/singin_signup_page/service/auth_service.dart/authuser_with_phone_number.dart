import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/home/pages/home_page.dart';

class AuthService {
  final BuildContext context;

  AuthService({required this.context});

  Future<void> createUserWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      // Show success message with animation
      _showAnimatedMessage('Пользователь успешно создан!', Colors.green);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // Show error message with animation
        _showAnimatedMessage(
            'Предоставленный пароль слишком слабый.', Colors.red);
      } else if (e.code == 'email-already-in-use') {
        // Show error message with animation
        _showAnimatedMessage(
            'Учетная запись для этого адреса электронной почты уже существует.',
            Colors.red);
      }
    } catch (e) {
      // Show general error message with animation
      _showAnimatedMessage('Произошла ошибка: $e', Colors.red);
    }
  }

  Future<void> signInWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      // Show success message with animation
      _showAnimatedMessage('Пользователь успешно вошел!', Colors.green);
      print('Пользователь успешно вошел!');
    } on FirebaseAuthException catch (e) {
      // Show general error message with animation
      _showAnimatedMessage(
          'Ваш логин или пароль не соответствует к учетную запись', Colors.red);
      print(
          'Ваш логин или пароль не соответствует к учетную запись: ${e.toString()}');
    }
  }

  Future<void> signOut({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  Future<void> _deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
    _showAnimatedMessage('Ваш пользователь был удален!', Colors.green);
    print('Ваш пользователь был удален!');
  }

  void _showAnimatedMessage(String message, Color backgroundColor) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 50.0,
        left: MediaQuery.of(context).size.width * 0.1,
        width: MediaQuery.of(context).size.width * 0.8,
        child: AnimatedMessage(
          message: message,
          backgroundColor: backgroundColor,
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }
}

class AnimatedMessage extends StatefulWidget {
  final String message;
  final Color backgroundColor;

  const AnimatedMessage({
    super.key,
    required this.message,
    required this.backgroundColor,
  });

  @override
  _AnimatedMessageState createState() => _AnimatedMessageState();
}

class _AnimatedMessageState extends State<AnimatedMessage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: Material(
          color: widget.backgroundColor,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Text(
              widget.message,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
