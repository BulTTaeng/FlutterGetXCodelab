# codelab

A new Flutter Codelab.

## Getting Started

🔧 요구사항

MVC(Model, View, Controller) 디자인 패턴 사용
혹은 MVVM으로 변형해도 됨. (할게 없을듯?)
기본적인 base는 Flutter GetX Pattern 사용.

Flutter 설치 :
1. AppBar는 각 페이지의 이름을 나타냄
CustomAppBar class 생성(custom_appbar.dart) widget override
title을 각 페이지에 맞게 파라미터로 받아서 적어줌

2. Side Menu Bar(Side Navigation Bar) 생성
Drawer Widget 이용
ListView 사용 (총 3개의 페이지 만들기)
홈페이지 (초기페이지)
마이 페이지
설정 페이지
모든 라우팅은 GetX의 Named Routing(Get.toNamed, Get.back) 를 사용
이동할 때 Get.snackbar를 사용하여 어느페이지로 갔는지 메시지
를 띄워줄 것


Flutter Codelab 2
모든 메뉴 이동에 관한 스크립트는 menu.dart에 존재해야함.
3. 홈페이지
홈페이지로 라우팅되면, Model Class의 dummy data(미리 만들어진 데이터)를 가
지고 차트 , 게이지 혹은 그래프를 만들어야함.
차트, 그래프를 만들 경우 AppBar의 버튼을 이용하여 이 차트의 값이 +1씩 증
가하며 list에 insert되도록 만들고, 차트가 갱신되도록 만들어야 함.
게이지는 버튼을 누를때마다 +10씩 값이 증가하며 바로 갱신되도록 만들어야
함. 만약 Max값을 넘어간다면 다시 0으로 초기화
모든 delay되는 순간엔 CircularProgressBar를 넣어주어야함.
차트, 게이지, 그래프는 pub.dev 사이트의 플러그인을 활용. (syncfusion이 좋음)

4. 마이페이지
a. StatefulWidget이 아닌 StatelessWidget으로 작성.
b. +-버튼을 생성, 값이 1씩 증가 혹은 감소하는 것을 화면에 표현
Flutter Codelab 3
c. Get.find를 이용하여 Controller를 찾아 controller의 변수를 사용할 것 (GetX
update()함수 사용 + GetBuilder()사용)
i. GetBuilder는 내가 원하는 위젯만 업데이트 가능 (불필요한 리소스 방지)
ii. 값이 변할(여기서는 Text) 부분만 GetBuilder로 감싸서 update()와 함께 사용
d. 버튼은 FloattingButton을 이용 (버튼의 색상은 랜덤하게 만들지만, color.dart에서
색상을 정의 및 color.dart에서 색상을 사용해야함.)
e. Obx를 이용하여 Timer 1초마다 1씩 증가하는 Text 표시

5. 설정페이지
a. TextFormField를 이용 2가지 id, pwd를 입력 받음.
b. validation check : pwd는 6글자 이상 (Form Widget으로 감싸야함 + Key 필요)
c. pwd는 hiding (obscureText : true)
d. TextEditingController는 GetXController 사용 (form_controller.dart에서 정의)
e. 버튼 2개 필요
i. 하나는 reset(id, pwd 입력한거 reset)
ii. 하나는 ok(id, pwd를 Get.defaultDialog로 출력
