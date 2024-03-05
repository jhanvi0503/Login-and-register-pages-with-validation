import 'package:flutter/material.dart';
class end extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("start app"),
          onPressed: () {

            showDialog(context: context, builder:(context){
              return Container(
                child: AlertDialog(
                  title: Text("Are you sure?"),

                  actions: [
                    TextButton(onPressed:(){
                      Navigator.pop(context);
                    },child: Text("Cancle")),
                    TextButton(onPressed:(){
                      Navigator.pop(context);
                    }, child:Text("No")),
                    TextButton(onPressed:(){
                      Navigator.pop(context);
                    }, child:Text("yes"))
                  ],
                ),
              );
            }
            );
          },

        )
      )
    );
  }

}