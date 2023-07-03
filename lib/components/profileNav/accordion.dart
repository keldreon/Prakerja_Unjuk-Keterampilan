import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  // Show or hide the content
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(5),
      child: Column(children: [
        // The title
        ListTile(
          //image harus clip rect dikit
          titleAlignment: ListTileTitleAlignment.top,
          leading: const FlutterLogo(
            size: 20,
          ),
          title: Text(widget.title),
          subtitle: const Text('3826 Lowndes Hill Park Road,\nMason, CA 91040'),
          trailing: IconButton(
            icon: Icon(_showContent
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
          ),
        ),
        // Show or hide the content based on the state
        _showContent
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Text(
                        widget.content,
                        style: const TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              )
            : const Row()
      ]),
    );
  }
}
