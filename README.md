# SpringProject
  품질 데이터 시각화 프로젝트 with chart
## 개발환경
* JDK 1.8
* IDE : Eclipse IDE for Java EE developers
* Framework : Spring 4.3.9
* Web application server : Tomcat 9
* DB : mariaDB

## 시각화 페이지 구축
* settingweb1 - RestController로 DataBinding
   Ajax + javascript를 이용해서데이터 호출  
  JSON으로 리턴 (Jackson libary 필요함)
   <!-- jackson -->
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-core</artifactId>
            <version>2.9.2</version>
        </dependency>
        <dependency>
            <groupId>com.fasterxml.jackson.core</groupId>
            <artifactId>jackson-databind</artifactId>
            <version>2.9.2</version>
        </dependency>
       
* chartDeveloper - HightChart
  - winequality-red.cvs 이용
  - HigthChart
  home1.js - 클릭 리스너에 의해서 호출[chart()]되는 함수넣음. 
  chart()  - HighChart 생성
  
  `<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home1.js"></script>`
	`<script src="https://code.highcharts.com/highcharts.js"></script>`
  
 ### DEMO
 * settingweb1
  <img src="https://user-images.githubusercontent.com/57412714/80328694-08e80600-887b-11ea-86c9-e144ec6ebe5d.PNG" width="40%">

 * chartDeveloper
 <img src="https://user-images.githubusercontent.com/57412714/80328927-ab07ee00-887b-11ea-9c6c-f2e4b6993add.PNG" width="40%">
