import 'package:resume_builder_app/pages/utills/heders_utills.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    TextStyle headingStyle = const TextStyle(
      fontSize: 36,
      color: Color(0xffDDE6ED),
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2.5, 2.5),
          blurRadius: 2.0,
          color: Colors.grey,
        ),
      ],
    );
    bool _Profile = true;
    return Scaffold(
      // -----------
      appBar: appBar(
        opTap: () {
          Navigator.of(context).pop();
        },
        msj: "Personal Info",
        context: context,
      ),
      backgroundColor: const Color(0xff526D82),
      // --------------
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ChoiceRow
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Form
                GestureDetector(
                  onTap: () {
                    _Profile = true;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.055,
                    width: size.width * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      color: const Color(0xff9DB2BF),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(4, 4),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      "Profile",
                      style: headingStyle,
                    ),
                  ),
                ),
                // Picker
                GestureDetector(
                  onTap: () {
                    _Profile = false;
                    setState(() {});
                  },
                  child: Container(
                    height: size.height * 0.055,
                    width: size.width * 0.45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      color: const Color(0xff9DB2BF),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(35),
                        bottomLeft: Radius.circular(35),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(4, 4),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      "Picture",
                      style: headingStyle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Stack(
              children: [
                ////0
                // Visibility(
                // visible: _Profile, child: formWidget(context: context)),
                ////1
                Visibility(
                  // visible: _Profile != true,
                  child: Container(
                    height: size.height * 0.28,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff9DB2BF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(3.5, 3.5),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    // child: Stack(
                    //   alignment: Alignment.bottomRight,
                    //   children: [
                    //     Container(
                    //       height: size.height * 0.22,
                    //       width: size.width * 0.44,
                    //       decoration: BoxDecoration(
                    //         color: Colors.blue,
                    //         shape: BoxShape.circle,
                    //       ),
                    //
                    //     ),
                    //     FloatingActionButton(onPressed: () {}),
                    //   ],
                    // ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: size.height * 0.2,
                          child: CircleAvatar(
                            radius: size.height * 0.1,
                            foregroundImage: Globals.globals.image != null
                                ? FileImage(Globals.globals.image!)
                                : null,
                          ),
                        ),
                        FloatingActionButton.small(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  title: Row(
                                    children: [
                                      const Text("Select optioon"),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {
                                            if (Globals.globals.image != null) {
                                              setState(() {});
                                              Navigator.of(context).pop();
                                            }
                                          },
                                          icon:
                                              const Icon(Icons.cancel_outlined))
                                    ],
                                  ),
                                  children: [
                                    imageOption(
                                        icon: Icon(Icons.camera),
                                        text: Text("Camera"),
                                        source: ImageSource.camera),
                                    imageOption(
                                        icon: Icon(Icons.image),
                                        text: Text("Galary"),
                                        source: ImageSource.gallery),
                                  ],
                                );
                              },
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.camera,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
