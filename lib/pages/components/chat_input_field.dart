import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  final void Function(String message) onSubmitted;

  const ChatInputField({Key? key, required this.onSubmitted}) : super(key: key);

  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isComposing = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _isComposing = _textEditingController.text.isNotEmpty;
    });
  }

  void _onSubmitted(String message) {
    _textEditingController.clear();
    widget.onSubmitted(message);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8.0),
          Container(
            width: 300,
            child: TextField(
              controller: _textEditingController,
              textInputAction: TextInputAction.send,
              decoration: const InputDecoration(
                hintText: 'Type a message',
                //border: InputBorder.none,
              ),
              onSubmitted: _onSubmitted,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _isComposing
                ? () => _onSubmitted(_textEditingController.text)
                : null,
          ),
        ],
      ),
    );
  }
}
