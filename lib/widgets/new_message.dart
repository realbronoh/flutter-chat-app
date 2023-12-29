import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  var _messageController = TextEditingController();

  void _sumbitMessage() {
    final enteredMessage = _messageController.text;
    if (enteredMessage.trim().isEmpty) {
      //  show error
      return;
    }

    // send to Firebase

    // reset inpu
    _messageController.clear();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(children: [
        Expanded(
          child: TextField(
            controller: _messageController,
            textCapitalization: TextCapitalization.sentences,
            autocorrect: true,
            enableSuggestions: true,
            decoration: InputDecoration(
              labelText: 'Send a message...',
            ),
          ),
        ),
        IconButton(
          color: Theme.of(context).colorScheme.primary,
          icon: Icon(Icons.send),
          onPressed: _sumbitMessage,
        ),
      ]),
    );
  }
}
