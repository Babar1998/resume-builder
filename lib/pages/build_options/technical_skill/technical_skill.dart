import 'package:resume_builder_app/pages/utills/heders_utills.dart';

class TechnicalSkill extends StatefulWidget {
  const TechnicalSkill({super.key});

  @override
  State<TechnicalSkill> createState() => _TechnicalSkillState();
}

class _TechnicalSkillState extends State<TechnicalSkill> {
  List<String> skill = ["", ""];
  List<TextEditingController> text_edinting_controller = [
    TextEditingController(),
    TextEditingController()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        opTap: () {
          Navigator.of(context).pop();
        },
        msj: "Technical Skill",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < skill.length; i++)
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: text_edinting_controller[i],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        skill.removeAt(i);
                        text_edinting_controller.removeAt(i);
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                ],
              ),
            IconButton(
              onPressed: () {
                setState(() {
                  skill.add("");
                  text_edinting_controller.add(TextEditingController());
                });
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
