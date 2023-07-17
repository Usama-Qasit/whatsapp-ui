import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('whatsApp'),
            bottom:const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.groups),
                  ),
                  Tab(
                    child:Text('Chats') ,
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child:Text('Calls'),
                    ),
            ]
            ),
            actions: [
              const Icon(Icons.camera_alt),
              SizedBox(width: 20,),
              const Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,)=>[

                    PopupMenuItem(
                        value: '1',
                        child: Text('New Groups')
                    ),
                    PopupMenuItem(
                        value: '2',
                        child: Text('Settings')
                    ),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Logout')
                    ),
                  ]
              ),
              SizedBox(width: 10,),
            ],
          ),
          body:  TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('Introducing communities',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
                ListView.builder(
                  itemCount: 10,
                    itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/16885558/pexels-photo-16885558.jpeg?cs=srgb&dl=pexels-rina-mayer-16885558.jpg&fm=jpg&_gl=1*i8o544*_ga*OTE3Nzk5MjcwLjE2ODUwMzg1NzY.*_ga_8JE65Q40S6*MTY4OTEwNDUwNy41LjEuMTY4OTEwNDUyMC4wLjAuMA..'),
                      ),
                      title: Text('Usama'),
                      subtitle:Text('Where is my dog'),
                      trailing: Text('9:35 AM'),
                    );
                }
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index) {
                    if (index == 0) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/16885558/pexels-photo-16885558.jpeg?cs=srgb&dl=pexels-rina-mayer-16885558.jpg&fm=jpg&_gl=1*i8o544*_ga*OTE3Nzk5MjcwLjE2ODUwMzg1NzY.*_ga_8JE65Q40S6*MTY4OTEwNDUwNy41LjEuMTY4OTEwNDUyMC4wLjAuMA..'),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 11,
                              child: Padding(
                                padding: EdgeInsets.all(1.7),
                                child: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  radius: 10,
                                  child: Center(
                                    child: Icon(Icons.add,
                                      color: Colors.white,
                                      size: 15,),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        title: Text('My status'),
                        subtitle: Text('Tap to add status update'),
                      );
                    } else if (index == 1) {
                      return const Padding(
                          padding: EdgeInsets.all(6.0),
                        child: Text('Recent updates',
                        style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                        ),
                      );
                    }else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.teal,width: 3),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://images.pexels.com/photos/16885558/pexels-photo-16885558.jpeg?cs=srgb&dl=pexels-rina-mayer-16885558.jpg&fm=jpg&_gl=1*i8o544*_ga*OTE3Nzk5MjcwLjE2ODUwMzg1NzY.*_ga_8JE65Q40S6*MTY4OTEwNDUwNy41LjEuMTY4OTEwNDUyMC4wLjAuMA..'),
                          ),
                        ),
                        title: Text('Usama Qasit'),
                        subtitle: Text('2 minutes ago'),
                      );
                    }
                  },
                ),
                ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/16885558/pexels-photo-16885558.jpeg?cs=srgb&dl=pexels-rina-mayer-16885558.jpg&fm=jpg&_gl=1*i8o544*_ga*OTE3Nzk5MjcwLjE2ODUwMzg1NzY.*_ga_8JE65Q40S6*MTY4OTEwNDUwNy41LjEuMTY4OTEwNDUyMC4wLjAuMA..'),
                    ),
                    title: Text('Usama'),
                    subtitle: Text(index /2 == 0 ? 'You missed audio Call' : 'Call time is 12:43'),
                    trailing: Icon(index /2 == 0 ? Icons.phone:Icons.video_call),
                  );
                }
                ),
                ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/16885558/pexels-photo-16885558.jpeg?cs=srgb&dl=pexels-rina-mayer-16885558.jpg&fm=jpg&_gl=1*i8o544*_ga*OTE3Nzk5MjcwLjE2ODUwMzg1NzY.*_ga_8JE65Q40S6*MTY4OTEwNDUwNy41LjEuMTY4OTEwNDUyMC4wLjAuMA..'),
                    ),
                    title: Text('Usama'),
                    subtitle: Text(index /2 == 0 ? 'You missed audio Call' : 'Call time is 12:43'),
                    trailing: Icon(index /2 == 0 ? Icons.phone:Icons.video_call),
                  );
                }
                ),
              ]
          ),

        )
    );
  }
}
