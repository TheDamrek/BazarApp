import 'package:flutter/material.dart';


void showTermsAndPolicyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        "Terms and Privacy Policy",
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Please read our terms carefully. By using this app, you agree to the following:",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12),

              _PolicyItem(
                text:
                    "Your personal data (like email and name) is only collected to provide you with access to this app and improve your experience.",
              ),
              _PolicyItem(
                text:
                    "We will never sell or share your personal data with third parties without your consent.",
              ),
              _PolicyItem(
                text:
                    "Some anonymous usage data may be collected to improve app performance and features.",
              ),
              _PolicyItem(
                text:
                    "You may request to have your account and data deleted at any time by contacting support.",
              ),
              _PolicyItem(
                text:
                    "By signing up, you agree to follow our community rules and respect other users.",
              ),
              _PolicyItem(
                text:
                    "We reserve the right to update these terms. If we do, you will be notified in the app.",
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Close"),
        ),
      ],
    ),
  );
}

class _PolicyItem extends StatelessWidget {
  final String text;
  const _PolicyItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ",
              style: TextStyle(fontSize: 16, color: Colors.deepPurple)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
