<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import = "DAO.NgonNguDAO" %>
<%@page import = "java.util.*" %>
<% Map<String,String> showlanguage = new NgonNguDAO().vietnamLanguage();
   String lang = (String) session.getAttribute("lang1");
   if(lang!=null){
	   if(lang.equals("Vietnamese")){
		   showlanguage = new NgonNguDAO().vietnamLanguage();
	   }else if(lang.equals("English")){
		   showlanguage = new NgonNguDAO().englishLanguage();
		   
	   }
   }

%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Đăng ký</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" />
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">  -->
    <link rel="stylesheet" href="assets/css/style.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="shortcut icon" href="favicon.png">
  
</head>
<body>
<!-- partial:index.partial.html -->


<div class="logo text-center">
  <h1>Coffee&Tea</h1>
</div>
<div class="wrapper" id="wrap">
  <div class="inner-warpper text-center">
    <h2 class="title">Sign up to your account</h2>
    <form action="XuLyDangKy" method="post">
      <div class="input-group">
        <label class="palceholder" for="username"><%=showlanguage.get("DangKy.UserName")%></label>
        <input class="form-control" name="username" id="userName" type="text" placeholder="" />
         <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error")%></span>
        <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error5")%></span>
        <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error6")%></span>
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="pass"><%=showlanguage.get("DangKy.PassWord")%></label>
        <input class="form-control" name="pass" id="pwd" type="password" placeholder="" />
        <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error3")%></span>
        <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error4")%></span>
        <span class="lighting" ></span>
        
          <button class="btn btn-outline-secondary" type="button" id="btnPassword" style="height:40px">
            <span class="fas fa-eye"></span>
          </button>
    
      </div>
      <div class="input-group">
        <label class="palceholder" for="userPassword"><%=showlanguage.get("DangKy.RePass")%></label>
        <input class="form-control" name="repass" id="userPassword" type="password" placeholder=""
        >
                 <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error1")%></span>
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="userPassword"><%=showlanguage.get("DangKy.FirstName")%></label>
        <input class="form-control" name="firstname" id="userPassword" type="text" placeholder="" />
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="userPassword"><%=showlanguage.get("DangKy.Email")%></label>
        <input class="form-control" name="email" id="userPassword" type="email" placeholder="" />
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="userPassword"><%=showlanguage.get("DangKy.Telephone")%></label>
        <input class="form-control" name="telephone" id="userPassword" type="text" placeholder="" />
                 <span style="color:red;font-size:10px"><%=showlanguage.get("DangKy.Error2")%></span>
        
        <span class="lighting"></span>
      </div>
      <div class="input-group">
        <label class="palceholder" for="userPassword"><%=showlanguage.get("DangKy.Address")%></label>
        <input class="form-control" name="address" id="userPassword" type="text" placeholder="" />
        <span class="lighting"></span>
      </div>

      <button type="submit" id="login"><%=showlanguage.get("DangKy.SignUp")%></button>
      <br><br>
      <button onclick="event.preventDefault(); window.location.href='DangNhap.jsp';" class="btn btn-success"><%=showlanguage.get("DangKy.Login") %></button>
      <br><br>
      <button type="reset"><%=showlanguage.get("DangKy.Reset")%></button>
      
    </form>
    <button onclick="openFullscreen();">Open in Fullscreen Mode</button>
    
  </div>
  
</div>

<!-- you don't need that :)  -->
<div class="direction" style="height:120px">
  Type something in input and click submit to see the effect
  <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" style="list-style:none;text-align:center">
    <li role="presentation"><a role="menuitem" href="DaNgonNguDKy?lang1=Vietnamese"><img src="assets/img/vietnam.png" style="position:relative;left:-30px"></a></li>
<li role="presentation"><a role="menuitem" href="DaNgonNguDKy?lang1=English"><img src="assets/img/united-states.png" style="position:relative;left:-30px"></a></li>
   
  </ul>

</div>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js'></script><script  src="assets/js/script.js"></script>

</body>
<script >
//step 1
const ipnElement = document.querySelector('#pwd')
const btnElement = document.querySelector('#btnPassword')

// step 2
btnElement.addEventListener('click', function() {
  // step 3
  const currentType = ipnElement.getAttribute('type')
  // step 4
  ipnElement.setAttribute(
    'type',
    currentType === 'password' ? 'text' : 'password'
  )
})
</script>
<script>
/* Get the element you want displayed in fullscreen mode (a video in this example): */
var elem = document.getElementById("wrap");

/* When the openFullscreen() function is executed, open the video in fullscreen.
Note that we must include prefixes for different browsers, as they don't support the requestFullscreen method yet */
function openFullscreen() {
  if (elem.requestFullscreen) {
    elem.requestFullscreen();
  }
}
    </script>
<style>
/* .container{
	height: 100%;
	width: 100%;
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url("");
	background-position: center;
	background-size: cover;
	position: absolute;
} */
</style>
</html>
