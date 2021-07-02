import 'package:arampay/api/apiService.dart';
import 'package:arampay/common/constants.dart';
import 'package:arampay/models/loanRequestModel.dart';
import 'package:arampay/screens/loanScreens/loanBalanceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoanApplicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoanApplication(),
    );
  }
}

class LoanApplication extends StatefulWidget {
  // const LoanApplication({Key? key}) : super(key: key);

  @override
  _LoanApplicationState createState() => _LoanApplicationState();
}

class _LoanApplicationState extends State<LoanApplication> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController loanAmountController = new TextEditingController();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  bool isAPICallProcess = false;
  APIService _apiService = APIService();
  LoanRequests _loanRequests;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _loanRequests = new LoanRequests();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoanBalacePage();
                            },
                          ));
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    BlackProjectLogo(),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kButtonColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Balance: ₦$loanBalance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Recent Withdrawal: ₦$recentAppliedLoan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Total Withdrawal: ₦$totalAppliedLoan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: loanAmountController,
                          onSaved: (input) => _loanRequests.amount = input,
                          validator: (input) =>
                              input.isEmpty ? "Invalid Amount" : null,
                          decoration: InputDecoration(
                            labelText: "Enter Amount",
                            labelStyle: TextStyle(
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: kPrimaryColor)),
                            prefixIcon: Icon(
                              Icons.money_sharp,
                              color: kPrimaryColor,
                              size: 35,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            print(loanAmountController.text);
                            int input_amount =
                                int.parse(loanAmountController.text);
                            if (loanBalance < input_amount ||
                                loanBalance == 0) {
                              final snackBar = SnackBar(
                                content: Text(
                                    "Your request ₦$input_amount is higher than you allocated ₦$loanBalance balance"),
                              );
                              scaffoldKey.currentState.showSnackBar(snackBar);
                            } else {
                              loanBalance -= input_amount;
                              recentAppliedLoan = input_amount;
                              totalAppliedLoan += input_amount;
                              sendLoanRequestToServer({
                                "message": 'Success',
                                "amount": loanAmountController.text,
                                "durationFigure": '1',
                                "durationPeriod": 'Months',
                                "repaymentInterval": 'Monthly'
                              });
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return LoanBalacePage();
                                },
                              ));
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 20),
                            decoration: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> sendLoanRequestToServer(Map<String, String> mapData) async {
    var payload = await _apiService.postWithToken(
        '/api/loans/loan-requests/retrieve/create/', mapData);
    print(payload);
    final snackBar = SnackBar(
      content: Text(
          'Loan request of ₦${loanAmountController.text} Request Successful'),
    );
    scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
