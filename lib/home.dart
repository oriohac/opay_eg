import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opay_eg/widgets/home_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(243, 255, 255, 255),
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(12),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SvgPicture.asset("asset/circledcircle.svg"),
        ),
        leadingWidth: 36,
        title: Text(
          "Hi, CHUKWUMA",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        actions: [
          Badge(
            backgroundColor: const Color.fromARGB(255, 255, 222, 222),
            label: Text(
              "HELP",
              style: TextStyle(fontSize: 4, color: Colors.red),
            ),
            child: Icon(Icons.headset_mic)),
          SizedBox(width: 16),
          Icon(Icons.settings_overscan),
          SizedBox(width: 16),
          Badge(
            backgroundColor: Colors.red,
            label: Text(
              "22",
              style: TextStyle(fontSize: 6, color: Colors.white),
            ),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 177, 93),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.maxFinite,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.shield, size: 18, color: Colors.white),
                        Text(
                          "Available Balance",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          "Transaction History",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          "₦25,456.95",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 12,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 2, 206, 107),
                                  size: 12,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "Add Money",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 2, 206, 107),
                                    fontSize: 12,
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
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIcons(
                      isCircle: false,
                      tittle: "To OPay",
                      iconName: "asset/personsquare.svg",
                    ),
                    HomeIcons(
                      isCircle: false,
                      tittle: "To Bank",
                      iconName: "asset/bank.svg",
                    ),
                    HomeIcons(
                      isCircle: false,
                      tittle: "Withdraw",
                      iconName: "asset/arrowup.svg",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Badge(
                          backgroundColor: Colors.red,
                          label: Text(
                            "Up to 6%",
                            style: TextStyle(fontSize: 6, color: Colors.white),
                          ),
                          child: HomeIcons(
                            isCircle: true,
                            tittle: "Airtime",
                            iconName: "asset/contactnotebook.svg",
                          ),
                        ),
                        Badge(
                          backgroundColor: Colors.red,
                          label: Text(
                            "Up to 6%",
                            style: TextStyle(fontSize: 6, color: Colors.white),
                          ),
                          child: HomeIcons(
                            isCircle: true,
                            tittle: "Data",
                            iconName: "asset/internetconnection.svg",
                          ),
                        ),
                        HomeIcons(
                          isCircle: true,
                          tittle: "Betting",
                          iconName: "asset/soccerball.svg",
                        ),
                        HomeIcons(
                          isCircle: true,
                          tittle: "TV",
                          iconName: "asset/tv.svg",
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeIcons(
                          isCircle: true,
                          tittle: "Safebox",
                          iconName: "asset/wallet.svg",
                        ),
                        HomeIcons(
                          isCircle: true,
                          tittle: "Loan",
                          iconName: "asset/loan.svg",
                        ),
                        HomeIcons(
                          isCircle: true,
                          tittle: "Play4aChild",
                          iconName: "asset/handheart.svg",
                        ),
                        HomeIcons(
                          isCircle: true,
                          tittle: "More",
                          iconName: "asset/internetconnection.svg",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ListTile(
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                leading: SvgPicture.asset(
                  "asset/oldtv.svg",
                  color: Color.fromARGB(255, 4, 177, 93),
                ),
                title: Text("Cash up for grabs!"),
                subtitle: Text("Invite friends and earn upto 4,200 Bonus"),
                titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black,
                ),
                subtitleTextStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 4, 177, 93),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "asset/circledcircle.svg",
              width: 24,
              height: 24,
              color: Colors.green,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "asset/diamond.svg",
              width: 24,
              height: 24,
              color: const Color.fromARGB(255, 141, 141, 141),
            ),
            label: "Rewards",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "asset/chart.svg",
              width: 24,
              height: 22,
              color: const Color.fromARGB(255, 141, 141, 141),
            ),
            label: "Finance",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "asset/creditcard.svg",
              width: 24,
              height: 24,
              color: const Color.fromARGB(255, 141, 141, 141),
            ),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "asset/user.svg",
              width: 24,
              height: 24,
              color: const Color.fromARGB(255, 141, 141, 141),
            ),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
