import 'package:flutter/material.dart';
import '../model/user_model.dart';

class UsersListView extends StatelessWidget {
  final List<UserData> users;
  const UsersListView({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: users.isEmpty ?
          const Text('No Users') :
          ListView.builder(
            controller: ScrollController(

            ),
            itemCount: users.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              var user = users[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(user.picture.medium),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${user.name.title} ${user.name.first} ${user.name.last}'),
                            Text('Gender: ${user.gender}'),
                            Text('Age: ${user.dob.age}'),
                            Text('E-mail: ${user.email}', overflow: TextOverflow.ellipsis,),
                            Text('Phone: ${user.phone}'),
                            Text('Cell(Mobile): ${user.cell}')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },

          ),
    );
  }
}


