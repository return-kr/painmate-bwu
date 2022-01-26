import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String txt;
  Question({required this.txt});

  @override
  _QuestionState createState() => _QuestionState(text: txt);
}

class _QuestionState extends State<Question> {
  final String text;
  _QuestionState({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                '$text',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}

class Answer extends StatelessWidget {
  final String txt;
  Answer({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt',
      style: TextStyle(fontSize: 16.0),
    );
  }
}

class BoldText extends StatelessWidget {
  final String txt;
  BoldText({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$txt',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
      ],
    );
  }
}

class NormalText extends StatelessWidget {
  final String txt;
  NormalText({required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            '$txt',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}

class NeckRemedy extends StatelessWidget {
  const NeckRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'CERVICAL/NECK EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/neck/neckrotate.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Neck Rotation',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Take your chin down towards the front of your chest. Exhale while doing this to feel a pleasant stretch behind your neck.'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Rotate the neck & take your chin towards the left shoulder as you inhale. Look over your left shoulder. You should feel the stretch in the right side of your neck'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Rotate the neck bringing your chin back to the chest position as you exhale to feel the stretch behind your neck again'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Rotate the neck taking chin to the right shoulder as you inhale. Look over your right shoulder to feel the stretch on the left side of your neck'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(
                  txt:
                      'Rotate the neck and bring the chin back to the chest position as you exhale. You should feel the stretch behind the neck'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 6:'),
              NormalText(
                  txt:
                      'Raise your chin as you inhale to get in the starting position'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 7:'),
              NormalText(txt: 'Repeat the above sequence three times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/neck/neckflex.png'),
        ),
        Text(
          'Isometric Flexion',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Place both hands with fingers interlocked on your forehead. Gently push both the hands and the forehead against each other, resisting the movement'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(txt: 'Hold for five counts and release'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Keep breathing as you perform the exercise'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat five times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/neck/neckex.png'),
        ),
        Text(
          'Isometric Extension',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Place both hands with fingers interlocked behind the head. Push your hands and the skull against each other, resisting the movement'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(txt: 'Hold for five counts and release'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Keep breathing as you perform the exercise'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat five times'),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/neck/necklatright.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Isometric Right Lateral Flexion',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Place your hand on the right side of your head on the right ear. Push your hand and head against each other, resisting the movement'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(txt: 'Hold for five counts and release'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Keep breathing as you perform the exercise'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat five times'),
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/neck/necklatleft.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Isometric Left Lateral Flexion',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step :'),
              NormalText(
                  txt:
                      'Follow the procedure of Isometric right Lateral Flexion, but this time place your left hand on the left ear'),
            ],
          ),
        ),
      ],
    );
  }
}

class ShoulderRemedy extends StatelessWidget {
  const ShoulderRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'SHOULDER EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/shoulder/sback.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Shoulder Backward Rotation',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(txt: 'Take your shoulders forward, breathe in'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Start rotating the shoulders taking them up and behind. Get your shoulder blades (i.e. scapula) together as you move the shoulders behind. Breathe out'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Get shoulders back to start position'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat this sequence for 10 times and relax'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/shoulder/sfor.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Forward Arm Stretch',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Extend your right arm to the side at shoulder level with palm facing forward. Breathe in'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Move the arm forward and take it across the chest as if to wrap your chest with your arm. Breathe out'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Bring the right hand around your left shoulder blade walking your fingertips towards your upper spine to the extent that it is comfortable'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Feel the stretch on the outer side of your right arm, right shoulder and upper back. Breathe deeply into the thoracic spine and upper back, trying to release the stretching muscles and relax'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Hold this position for 30 seconds to 1 minute'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 6:'),
              NormalText(txt: 'Repeat the above procedure on the left side'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/shoulder/sup.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Upward Arm Stretch',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Extend your right arm to the side with palm facing up. Breathe in'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Raise the arm towards the ceiling and then bend at the elbow till your fingertips reach the spine between your shoulder blades. Breathe out'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Walk your fingertips down the spine while breathing in'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Feel the stretch on the outer side of your right arm, upper back and the right side of your trunk. Breathe deeply trying to release the stretching muscles of the upper back and around the spine. Relax'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Hold this position for 30 seconds to 1 minute'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 6:'),
              NormalText(txt: 'Repeat the above procedure for the left side'),
            ],
          ),
        ),
      ],
    );
  }
}

class BackRemedy extends StatelessWidget {
  const BackRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'BACK EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backfor.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Forward Bends In Sitting Position',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Place your hands on mid-thigh & stretch your spine. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Keeping your feet firm, push into the feet; bend your body, vertebrae by vertebrae from the hip region to chest till your hands reach the floor. Exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Release your shoulder, neck and head towards the floor. Keep breathing into the hip sockets, spine, shoulders & neck as you relax them. Hold for 30 seconds to 1 minute'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Come out of this position by uncurling your lower back first, followed by upper back, then neck & finally straighten your head as you push through the feet into the floor'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(
                  txt:
                      'This exercise can be repeated often throughout the day'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backl.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'L Shaped Body Stretch',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Bend forward and place your hands on the desk, shoulder-width distance apart, making a 90 degree angle at your hips. Exhale. Keep your neck and head aligned with the spine'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Give a nice stretch to the spine, pulling the tail-bone away from the crown of the head. Hold this position for 30 seconds to I minute'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Keep breathing while stretching the calves, hamstrings, back muscles, shoulder muscles & arms and release the stress in them'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Come out of the position by pushing into the hands and then straighten up. Inhale'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backseat.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Seated Spine Twists',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'From the side sitting position (left thigh next to the chair back), start turning towards the back of the chair'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Inhale as you stretch your spine straight from the tail-bone to the crown of the head and exhale as you turn. Keep stretching and turning till you hold the back of the chair'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Look behind over your left shoulder in the final position. Keep breathing into the stretch. Hold this position for 30 seconds to 1 minute'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Turn your torso back to the start position as you exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(
                  txt:
                      'Repeat the whole sequence on the Opposite side, sitting with right thigh next to the back of the chair'),
              BoldText(txt: 'Step 6:'),
              NormalText(
                  txt: 'This stretch can be repeated often throughout the day'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backstandside.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Standing Side Bends',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Raise your right arm up with the palm facing the left side'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Stretch the right arm up, giving a nice stretch to the right side of the trunk. Keep the weight equally distributed between both feet as you stretch. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Bend towards the left side with your right fingertips trying to reach towards the ceiling diagonally. Exhale. Feel the increase in stretch on the right side of the trunk'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt: 'Breathe into the stretch. Hold for 5 counts and relax'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Come back to the start position'),
              BoldText(txt: 'Step 6:'),
              NormalText(txt: 'Repeat for the left side'),
              BoldText(txt: 'Step 7:'),
              NormalText(txt: 'Repeat 2 times for each side'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backstandback.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Standing Backwards Bend',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Raise your arms up, with shoulders pulled down maintaining distance between arms ears. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Bend at your upper back, with the finger tips reaching towards the ceiling. Exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Feel the stretch on the front side of your body, shoulders and upper back. Keep breathing into the stretches as you pull yourself up and back'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt: 'Hold here for 5 counts and relax. Keep deep breathing'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Come back to start position as you exhale'),
              BoldText(txt: 'Step 6:'),
              NormalText(txt: 'Repeat twice'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/back/backchair.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Chair Crunches',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Take your chest diagonally towards the left thigh. Resist this movement with forearms in the opposite direction. You should feel contraction in your abdominal muscles. Keep breathing naturally. Hold for 5 seconds'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(txt: 'Repeat this on the right side'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Repeat 10 times on each side'),
            ],
          ),
        ),
      ],
    );
  }
}

class AnkleRemedy extends StatelessWidget {
  const AnkleRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'ANKLE EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/ankle/ankletap.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Tap Into Toes',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Tap your alternate foot toes on the ground, raising alternate heels'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(txt: 'Repeat 30 times'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Can be done often throughout the day'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/ankle/anklecalf.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Calf Raises',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Hold the table lightly and raise your body on your toes. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Feel the contraction in your calves and hold this position for 5 counts'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Lower down the heels. Exhale'),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Repeat this 20 times. Can be done often throughout the day'),
            ],
          ),
        ),
      ],
    );
  }
}

class KneeRemedy extends StatelessWidget {
  const KneeRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'KNEE EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/knee/kneeraise.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Leg Raises',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Raise right foot up from the floor to knee level with thighs resting on the seat. You should feel contraction in front of the right thigh and a stretch in the calf. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Pull the toes of the right foot towards you. Hold it for 5 counts'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Slowly lower down the right foot to the ground as you exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat on the left leg'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Repeat alternatively for both legs 20 times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/knee/kneecurl.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Standing Leg Curls',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Grasp the backrest of chair and bend the right leg up trying to kick the backside of the right thigh with the right heel'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt: 'Feel the stretch on the front side of the right thigh'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Repeat on the left leg'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Repeat by alternating legs 20 times. Keep breathing naturally'),
            ],
          ),
        ),
      ],
    );
  }
}

class HipRemedy extends StatelessWidget {
  const HipRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'HIP EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/hip/hipdesk.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Desk Squats',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Bend your knees keeping the spine neutral and chin parallel to floor. Push your hips down and behind till the thighs are parallel to the floor. Exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Hold this position for 10 counts. Keep breathing naturally'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Raise your body to the start position, pushing through the heel. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat 4 to 5 times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/hip/hipstandfor.png'),
        ),
        Divider(
          height: 15.0,
          thickness: 3.0,
          indent: 90.0,
          endIndent: 90.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/hip/hipstandback.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Standing Leg Raises - Forwards & Backwards',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(txt: 'Place your right hand on the wall'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Taking all weight on the right leg, try to balance on the right foot'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Move your left leg forwards and backwards'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat the above movement 20 times'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(
                  txt: 'Change the side with the left leg next to the wall'),
              BoldText(txt: 'Step 6:'),
              NormalText(
                  txt: 'Repeat above sequence, now moving right leg, 20 times'),
            ],
          ),
        ),
      ],
    );
  }
}

class HandRemedy extends StatelessWidget {
  const HandRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'WRIST EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/hand/wristex.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Wrist Extensions',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Grasp the edge of the desk with your hands such that your fingers are facing down and the palm is facing away from you'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Keeping the arms straight at the elbows, lean over the hands, feeling the stretch on the front side of arms and forearms'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Hold the stretch for 5 counts and release. Keep breathing during the stretches'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat 10 times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/hand/wristrot.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Wrist Rotations',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Make fists and rotate them at wrists 10 times in the clockwise direction'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Rotate the fists at the wrist 10 times in the anticlockwise direction'),
            ],
          ),
        ),
      ],
    );
  }
}

class ElbowRemedy extends StatelessWidget {
  const ElbowRemedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Text(
          'ELBOW EXERCISES',
          style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/elbow/tricep.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Triceps Dips',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Hold the edge of the seat of the chair with your arms by the side of your body'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Straighten your arms so that it raises your body up, away from the chair. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(
                  txt:
                      'Bend your elbows making your body dip between the arms till your legs are at 90 degrees at your hip joint. Exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(
                  txt:
                      'Re-straighten your arms raising your body back again. Inhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 5:'),
              NormalText(txt: 'Repeat 8-10 times'),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('images/elbow/bicep.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Biceps Curls',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/medback.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.5), BlendMode.dstATop),
            ),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              BoldText(txt: 'Step 1:'),
              NormalText(
                  txt:
                      'Hold a heavy object like water bottle or handbag in your hands with the object in front'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 2:'),
              NormalText(
                  txt:
                      'Curl your forearms up. Inhale.3. Hold the object there for 4-5 seconds. Keep breathing'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 3:'),
              NormalText(txt: 'Roll the forearms down as you exhale'),
              SizedBox(
                height: 10.0,
              ),
              BoldText(txt: 'Step 4:'),
              NormalText(txt: 'Repeat 10-15 times'),
            ],
          ),
        ),
      ],
    );
  }
}
