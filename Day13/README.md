Day13 (2017-10-19)
=============

#### Java Beans

* 자바 빈즈
    * 컴포넌트: 부품, 완제품을 만들기 위한 일부 구성요소. 각자 특정한 기능 수행
    * 지금은 Flow(흐름)에 따른 것이 아닌, '각자의 독립된 것들끼리 서로서로 수행하는 객체지향의 모델로 하자' 하여서 나온 것이 Java Beans이다.
    * 따라서 이미 있는 컴포넌트를 만들필요는 없고, 항상 누가 만든게 있는지 없는지 확인해야 한다.
    * 컨테이너 상에 위치
    * jsp:useBean 이 있을 경우, 빈즈를 이용하여 처리한다.(해당 액션을 사용.)
    * Model View Control (Model: Class, View: Client가 보는 부분->(JSP->HTML)) <<MVC 구조>>
    * 즉, JSP Beans는 JSP에서 사용할 수 있는 자바 컴포넌트(클래스) 라는 말이다.
        * Keyword: Scope, Setter/Getter, JSP <-> Java Bean <-> DBMS, useBean 이라는 액션, 
    * 기본 구조
        * 멤버변수, getter/setter 메소드로 구성
            * id: 빈즈클래스의 인스턴스 이름으로 사용할 변수다.
            * class: 빈즈 클래스의 클래스 이름으로, 패키지 경로를 포함한다.
            * scope: 빈즈 클래스의 범위로, page, request, session, application이 올 수 있다.
        * setProperty
            * name: 빈즈 클래스의 인스턴스 이름으로, id값에 설정했던 모든 변수 이름이다.
            * property: 속성 값으로 빈즈 클래스의 setXxx(Xxx는 속성이름) 메서드와 매칭될 속성 값. *를 지정하면 모든 setXxx에 자동으로 매칭된다.
                * 즉, *표시는 Form에서 받는 모든 내용이, Beans 클래스내에서 지정된 property가 완벽히 일치 할 때만 사용가능하며, 자동으로 1:1매칭이 되어 자동으로 작업이 지정된다.
        * getProperty
            * name: 빈즈 클래스의 인스턴스 이름으로, id 값에 설정했던 변수 이름이다.
            * property: 속성값으로 빈즈클래스의 getXxx(Xxx는 속성이름)메서드와 매칭될 속성값
```java
MyBean mybean = (MyBean)request.getAttribute("mybean");
if(mybean == null) {
    mybean = new MyBean();
    request.setAttribute("mybean", mybean);
}
```


### 실습하기
* 자바빈 TestBean 클래스 작성: 295 ~
* testBean 객체 생성: 308p ~ 
* 316p 연습문제 2번, 3번 해결

### 과제
* 다음 주 목 --> 조별로 조장이 과제 취합해서 교수님께 제출 할 것.
* 가장 잘 된 코드를 찾아서 게시판 붙일 것.

ㅅㅂ

* 게시판을 붙이는 형태로 해서 기말과제가 나갈 예정임