
import 'package:flutter/material.dart';
import 'package:messaging_app/color.dart';

class MessageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "Scouting Group",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Wellcome to Stream line scouting chat",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "We can now freely collaborate regarding our current demand\n"
                "Any question about the documentaion or the project\n"
                "please feel free to get in contact us\n",
                style: TextStyle(
                    color: Color(0xff78A1C6),
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Tuesdy, April 7th at 1:21PM",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMessage("Awesome! it's going to be amzing deal!"),
                        _buildMessage("I've run through different docs"),
                        _buildMessage("Hope for the best"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildMessage(
                          "Thanks for the sending the deal, I'll review it",
                          isSend: true,
                        ),
                        _buildMessage(
                          "and getback to you shortly",
                          isSend: true,
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Write message..",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildMessage(String message, {bool isSend = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isSend ? KColor.primaryColor : Colors.grey[300].withOpacity(.4),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Text(
        message,
        style: TextStyle(color: isSend ? Colors.white : null),
      ),
    );
  }
}