import 'package:flutter/material.dart';

import 'model/Contact.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>
{
  List<User> Users =
  
  [
    User("nader@gmail.com", "Nader123", "Nader", "01221177148", "https://www.cairo24.com/UploadCache/libfiles/131/5/600x338o/171.jpg"),
    User("ahmed@gmail.com", "Ahmed123", "Ahmed", "01221177148", "https://www.cairo24.com/Upload/libfiles/131/5/102.jpg"),
    User("mohamed@gmail.com", "Mohamed123", "Mohamed", "01221177148", "https://www.cairo24.com/Upload/libfiles/131/5/103.jpg"),
    User("diyan@gmail.com", "Diyan123", "Diyan", "01221177148", "https://www.cairo24.com/Upload/libfiles/131/5/106.jpg")
  ];
  /*
 تطبيق Login & Register Form

شاشة Login فيها Email + Password مع Validation.

زرار Register يفتح فورم جديد (Name, Email, Password, Confirm Password).

جرّب تستخدم TextFormField validator.
   */
  bool isNew = false;
  bool isRegest = false;
  String? loginName;
  String? loginPassword;
  User userTem = new User("","","","", "");
  bool show = false;
  GlobalKey<FormState> formstate = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();
  GlobalKey<ScaffoldState> scaff = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          key:scaff,
          appBar: AppBar(title: const Text("ContactShow"),

          ),

            drawer: show
                ? Drawer(

              child: ListView(
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                    child: ListView(
                      children: [
                      Text("Welcome! Mr:${userTem.name}"),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // يخلي الكونتينر دايرة
                          ),
                          child: ClipOval(
                            child: Image.network(
                              userTem.img!,
                              fit: BoxFit.contain,   // يملأ الدايرة كاملة
                            ),
                          ),
                        )


                      ],)
                  ),
                  ListTile(
                    title: Text("Number : ${userTem.number}"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Profile"),
                    onTap: () {},
                  ),
                  MaterialButton(onPressed: (){
                    setState(() {
                      userTem.name="";
                      userTem.number="";
                      userTem.img="";
                      show=false;
                    });

                    scaff.currentState!.closeDrawer();



                  },
                    child: Text("Sign Out",style: TextStyle(color: Colors.blue,fontSize: 25),),color: Colors.black,),

                ],
              ),
            )
                : null, // لو مش لوجين drawer = null
            body :Form
            (
                key: formstate,
                child:ListView(
                padding: EdgeInsets.all(10),

              children: [
                 Text("LoginSystem",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,) ,

                TextFormField(
                  validator: (value)
                  {
                    if(value == null || value.isEmpty)  return "this field can't be Empty";
                    if(!value.contains("@gmail.com")) return "it isn't an email";
                  },
                  onSaved: (val)
                  {
                    loginName = val;
                  },
                  decoration: InputDecoration(
                      prefix: Icon(Icons.person),
                      hintText: "  Enter Ur Username",
                      labelText: "UserName",
                      labelStyle: TextStyle(color: Colors.blue,fontSize: 25),
                      border : OutlineInputBorder(),

                  ),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value)
                  {
                    if(value == null || value.isEmpty)  return "this field can't be Empty";
                    if(value.length < 8) return "it can't be less than 8 digits";

                  },
                  onSaved: (val)
                  {
                    loginPassword = val;
                  },

                  decoration: InputDecoration(

                      prefix: Icon(Icons.lock),
                      hintText: "  Enter Ur Password",
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.blue,fontSize: 25),
                      border : OutlineInputBorder()

                  ),
                ),
                MaterialButton(onPressed: (){
                  setState(() {
                    if(formstate.currentState!.validate())
                    {

                      formstate.currentState!.save();
                    };
                    for(var user in Users)
                    {
                      if ( user.user_name == loginName && user.password == loginPassword)
                      {
                        setState(() {
                          userTem.name=user.name;
                          userTem.number=user.number;
                          userTem.img=user.img;
                          show=true;
                          scaff.currentState!.openDrawer();
                        });

                        scaff.currentState!.openDrawer();

                      }
                    };
                  });
                },
                child: Text("Sign In",style: TextStyle(color: Colors.blue,fontSize: 25),),color: Colors.black,),
                Form(
                    key:formstate2,
                    child: Column(
                  children: [
                SwitchListTile(
                  value: isNew,
                  onChanged: (val) {
                    setState(() {
                      isNew = val;
                      isRegest=!val;
                    });
                  },
                  title: Text("To Sign Up Press On"),
                ),

// ✅ هنا الشرط بيحدد هتظهر ولا لا
                if (isNew)
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) return "this field can't be Empty";
                            if (!value.contains("@gmail.com")) return "it isn't an email";
                            return null;
                          },
                          onSaved:(val)
                          {

                            userTem.user_name=val!;

                          },
                          decoration: InputDecoration(
                            prefix: Icon(Icons.person),
                            hintText: "Enter Your Email",
                            labelText: "Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) return "this field can't be Empty";
                            if (value.length < 8) return "Password must be at least 8 characters";
                            return null;
                          },
                          onSaved:(val)
                          {
                            userTem.password=val!;
                          },
                          decoration: InputDecoration(
                            prefix: Icon(Icons.lock),
                            hintText: "Enter Your Password",
                            labelText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) return "this field can't be Empty";
                          },
                          onSaved:(val)
                          {
                            userTem.number=val;
                          },
                          decoration: InputDecoration(
                            prefix: Icon(Icons.lock),
                            hintText: "Enter Your number",
                            labelText: "PhoneNumber",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) return "this field can't be Empty";
                          },
                          onSaved:(val)
                          {
                            userTem.name=val;
                          },
                          decoration: InputDecoration(
                            prefix: Icon(Icons.lock),
                            hintText: "Enter Your name",
                            labelText: "Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) return "this field can't be Empty";
                          },
                          onSaved:(val)
                          {
                            userTem.img=val;
                          },
                          decoration: InputDecoration(
                            prefix: Icon(Icons.lock),
                            hintText: "Enter Your Link of image",
                            labelText: "Image's Link",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        MaterialButton(
                          onPressed: () {
                            if (formstate2.currentState!.validate()) {
                              formstate2.currentState!.save();
                              setState(() {
                                if(userTem.name == null || userTem.password == null || userTem.number == null)
                                {

                                }
                                else
                                {
                                  Users.add(userTem);
                                  print("sss");
                                  isRegest=true;
                                }
                              });

                            }

                          },
                          color: Colors.black,
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                        if(isRegest)
                          Text("Done",style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold,backgroundColor: Colors.white),),





                      ],
                    ),
                  ),
                  ]
                    ),
                )


              ],

            )
        )),
    );

  }}
