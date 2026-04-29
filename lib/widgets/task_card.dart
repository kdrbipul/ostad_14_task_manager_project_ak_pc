import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          title: Text('Task Title',style: Theme.of(context).textTheme.titleMedium,),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('lorem ipsum dolor sit amet consectetur adipiscing elit'),
              Text('28-09-26'),
              Row(
                children: [
                  Chip(label: Text('New'),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Colors.orange,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,)),
                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}