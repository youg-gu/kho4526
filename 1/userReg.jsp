<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html> <!-- userReg.jsp -->
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--[if it IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
<style>
 body{font-family: Verdana, sans-serif; font-size:0.8em;}
 header, nav, section, article, footer
 {border:1px solid gray; margin:5px; padding:8px;}
 nav ul {margin:0; padding:0;}
 nav ul li {display:inline; margin; 5px;}
 .id_form {width:100px; height:14px; color:red;}
</style>
<title>�α��� �ǽ�</title>
</head>
<body>
 <header>
  <h2>�ǽ��� ȯ���մϴ�</h2></header>
 <nav>
  <ul>
   <li><a href="www.dju.ac.kr">�α���</a></li>
   <li><a href="hive.dju.ac.kr">��ȸ</a></li>
  </ul></nav>
 <section>
  <fieldset><legend>ȸ�� ����</legend>
   <fieldset><legend>�̸�/�̸���</legend>
    <label for="stud_name">�̸�</label>
    <label class="id_form"><%=request.getParameter("stud_name")%></label> <br/>
    <label for="stud_email">�̸���</label>
    <label class="id_form"><%=request.getParamerter("stud_email")%></label><br/>
    <label for="stud_phone">��ȭ��ȣ</label>
    <label class="id_form"><%=request.getParamerter("stud_phone")%></label><br/>
  </fieldset>
  <fieldset><legend>����</legend>
    <label class="id_form"><%=request.getParameter("stud_gender")%></label> <br/>
  </fieldset>
  <fieldset><legend>���</legend>
   <%
    ArrayList<String> myArrayList = new ArrayList<String>();
    for(int i=0;i<3;i++){
       String tmpType = request.getParameter("stud_hobby" + (i+1));
       if(tmp Type!=null&&!"".equals(tmpType))
       myArrayList.add(tmpType);
    }
    for(int i=0;i<myArrayList.size();i++){
    out.println("���"+(i+1)+"="+myArrayList.get(i)+"<br/>");
    }
    %>
   </fieldset>
  </fieldset>
 <section>
 <footer>
  <p>&copy; 2019Made by Korea. All rights reserved.</p>
 </footer>
</body>
</html>