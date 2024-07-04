part of '../view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ControllerHome controllerHome = Get.put(ControllerHome());

  @override
  void initState() {
    controllerHome.initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget body(){
      Widget homeFilter()=> widgetHomeFilter();
      Widget homeAppbar()=> widgetHomeAppbar();
      Widget homeData()=> widgetHomeData();
      Widget selectStore(){
        Widget cardData({required int index}){
          Widget icon()=> Container(
            height: 15.r,
            width: 15.r,
            padding: EdgeInsets.all(2.r),
            decoration: BoxDecoration(
              color: CustomColor.grey2,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                Icons.home,
                color: CustomColor.white,
                size: 10.r,
              ),
            ),
          );

          Widget customData()=> Text(
            controllerHome.jsonCustomer["result"][index]["Name"],
            style: CustomFont.poppins12Regular(color: CustomColor.black),
          );

          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 5.h
            ),
            child: InkWell(
              onTap: (){
                controllerHome.selectName.value = controllerHome.jsonCustomer["result"][index]["Name"];
                controllerHome.selectCustID.value = controllerHome.jsonCustomer["result"][index]["CustID"];
                controllerHome.isOpenDropDown.value = !controllerHome.isOpenDropDown.value;
                // var listNamePermissionFilter = controllerHome.jsonCustomer["result"].where((x) => x["CustID"].toUpperCase().contains(controllerHome.selectCustID.value.toUpperCase())).toList();
                controllerHome.filter.value = controllerHome.jsonCustomerTTH["result"].where((x)=> x["CustID"] == controllerHome.selectCustID.value).toList();
                // var listNamePermissionFilter = numbers.where((x)=>x<3);
              },
              child: Row(
                children: [
                  icon(),
                  SizedBox(width: 5.w,),
                  customData(),
                ],
              ),
            ),
          );
        }
        return Obx(()=> Visibility(
          visible: controllerHome.isOpenDropDown.value,
          child: Positioned(
            top: 70.h,
            child: Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Material(
                elevation: 5,
                child: Container(
                  width: 270.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: CustomColor.white,
                    border: Border.all(
                      width: 0.1
                    )
                  ),
                  child: Obx(()=> ListView.builder(
                    padding: EdgeInsets.only(
                      top: 5.h,
                      bottom: 5.h
                    ),
                    itemCount: (controllerHome.isLoadingCustomer.value == true)
                      ? 0
                      : controllerHome.jsonCustomer["result"].length,
                    itemBuilder: (context, index) => cardData(index: index),
                  ))
                ),
              ),
            )
          ),
        ));
      }
      return Stack(

        children: [
          Column(
            children: [
              homeFilter(),
              homeAppbar(),
              homeData(),
            ],
          ),
          selectStore(),
        ],
      );
    }
    return Scaffold(
      backgroundColor: CustomColor.green2,
      body: body(),
    );
  }
}