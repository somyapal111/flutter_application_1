import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();

  bool _loading = false;
  String _message = '';

  Future<void> _resetPassword() async {
    setState(() {
      _loading = true;
    });

    try {
      await _auth.sendPasswordResetEmail(email: _emailController.text);
      setState(() {
        _message = 'Password reset email sent. Check your email.';
      });
    } catch (e) {
      setState(() {
        _message = 'Error: $e';
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: _loading ? null : _resetPassword,
              child: _loading
                  ? CircularProgressIndicator()
                  : Text('Reset Password'),
            ),
            SizedBox(height: 16),
            Text(
              _message,
              style: TextStyle(
                color: _message.startsWith('Error') ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
