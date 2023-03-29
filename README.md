# Team3_2 🙌 Class_Haru

<hr>

## 🙋🏻‍♂️ 커밋 메시지 규칙
#### 예 ) design : header.jsp 카테고리 수정
feat : 새로운 기능 추가<br>
fix : 버그 수정<br>
docs : 문서 수정<br>
style : 코드 formatting, 세미콜론(;) 누락, 코드 변경이 없는 경우<br>
refactor : 코드 리팩터링<br>
test : 테스트 코드, 리팩터링 테스트 코드 추가(프로덕션 코드 변경 X)<br>
chore : 빌드 업무 수정, 패키지 매니저 수정(프로덕션 코드 변경 X)<br>
design : CSS 등 사용자 UI 디자인 변경<br>
comment : 필요한 주석 추가 및 변경<br>
rename : 파일 혹은 폴더명을 수정하거나 옮기는 작업만인 경우<br>
remove : 파일을 삭제하는 작업만 수행한 경우<br>
!BREAKING CHANGE : 커다란 API 변경의 경우<br>
!HOTFIX : 급하게 치명적인 버그를 고쳐야 하는 경우<br>
<hr>

<h3> 🌱 한 줄 소개 </h3>
원데이 클래스를 예약하는 웹사이트

<br><br>

<h3> 👩‍💻 사용 기술 </h3>
<div>
  <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white" />
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white" />
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white" />
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/> 
  
  </br>
  
  <img src="https://img.shields.io/badge/Github-181717?style=for-the-badge&logo=github&logoColor=white"/>
  <img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=for-the-badge&logo=Eclipse IDE&logoColor=white"/> 
  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
</div>

<br>

<h3> 💻 에러 기록 </h3>

> 깃

  #### 1. conflict 
  
    - spring이 호환되는 sts를 사용하다보니 pom.properties 파일이 계속해서 업데이트, 
      팀원 개개인의 PC마다 C드라이브 이름 설정이 달라 저장된 경로가 바뀌는 문제 발생 
    👉 gitignore 파일을 생성할 경우 해결할 수 있음 (해당 파일은 제외하고 업로드)

  * repository 공유 방법
    - fork : 다른 사람의 repository에서 내가 어떤 부분을 수정하거나 추가하고 싶을 때 해당 repository를 내 깃으로 그대로 복제
      -> original repository에 변경사항 적용하고 싶을 때 pull request 하면 관리자가 승인하여 merge 가능
    - clone : 특정 repository를 내 local에 복사하여 새로운 저장소 생성

<br>

> Vue

  #### 1. 화면을 include로 분할했을 때 Vue의 위치

    - include로 포함되는 페이지에 vue가 포함되었을 경우 jsp 파일로 데이터가 들어와서 그 내부 코드가 그대로 콘솔창에 뜨는 오류 발생
    👉 main에만 vue를 실행시키고 그 안에 있는 애들은 그냥 html 위주로 작성하는 것이 나을 듯


  #### 2. session값을 v-model로 동기화 하고자 할 때
  
    - vue로 보내는 데이터에 세션에서 받아오는 데이터를 넣고 싶을 때 ${session}을 사용해서 value값 출력은 가능, 이때 v-model로 값을 공유하고 싶었지만 안됨. 
      -> vue3(bootvue)를 사용할 때 스크립트가 충돌되어 $가 인식되지 않는 것으로 보임
    👉 ref로 요소를 정의한 뒤 this.$refs로 value 값을 가져오는 방식으로 해결
