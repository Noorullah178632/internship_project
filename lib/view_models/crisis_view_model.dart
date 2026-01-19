import 'package:first_app/models/crisis_model.dart';

class CrisisViewModel {
  List<CrisisModel> get crisisServices => [
    //1st Container
    CrisisModel(
      title: "Edhi Foundation (Emergency Services)",
      number: "(021) 32413232",
      descriptin:
          "If you need emergency help, the Edhi Foundation provides ambulance, shelter, and other welfare services.",
      area: "Area: Pakistan, Hours: 24/7",
    ),
    //2nd container
    CrisisModel(
      title: "Umang Mental Health Helpline",
      number: " (92) 0311 7786264",
      descriptin:
          "The helpline provides 24/7 confidential support for individuals dealing with mental health issues, stress, or emotional distress.",
      area: "Area: Pakistan, Hours: 24/7",
    ),
    //3rd container
    CrisisModel(
      title: "Pakistan Red Crescent Society (Disaster Response)",
      number: "1030 (toll-free)",
      descriptin:
          "The Red Crescent helps during disasters and emergencies. Call 1030 to find a nearby shelter or medical aid.",
      area: "Area: Pakistan, Hours: 24/7",
    ),
    //4th container
    CrisisModel(
      title: "Rozan Helpline (Emotional Support & Counseling)",
      number: "0304-111-1741",
      descriptin:
          "Rozan offers psychosocial support, especially for women, children, and trauma survivors.",
      area: "Area: Pakistan, Hours: 9AM – 5PM (Mon–Fri0)",
    ),
    //5th container
    CrisisModel(
      title: "Drugs Helpline – Anti Narcotics Force (ANF)",
      number: "+92-51-9270173",
      descriptin:
          "Call 1415, ANF's helpline for anonymous reporting, prevention, and support for people struggling with drug addiction in Pakistan. Operates under the Ministry of Narcotics Control.",
      area: "Area: Pakistan, Hours: 24/7",
    ),
    //6th container
    CrisisModel(
      title: "Pakistan Armed Forces – GHQ Helpline",
      number: "1125",
      descriptin:
          "Retired or serving personnel and families can contact local Combined Military Hospitals (CMH) or the GHQ helpline for welfare, psychological counseling, and veteran support.",
      area: "Area: Pakistan, Hours: Varies (CMH/Army centers)",
    ),
  ];
}
