<!DOCTYPE html>
<%@ page pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
  <title>BMI Result</title>
  <%request.setCharacterEncoding("UTF-8");%>
</head>
<style>
table, td, th {
    border: 1px solid black;
	margin-left:30%;
}

table {
    border-collapse: collapse;
}
th{
	width:80px;
	background:#FFC8B4;
	
}
td {
    height: 30px;
	width:100px;
}
</style>
<body>
  <%
      String name = request.getParameter("username");
	  String birth = request.getParameter("birth");
	  String gender = request.getParameter("radio");
	  String phone = request.getParameter("telephone");
	  String mail = request.getParameter("email");
	  String school = request.getParameter("school");
	  String[] h = request.getParameterValues("hobby");
      String cc = request.getParameter("chinese");
	  String ee = request.getParameter("english");
	  String jj = request.getParameter("japan");
	  String kk = request.getParameter("korea");
	  String other = request.getParameter("otherlan");
	  String oo = request.getParameter("otherlannn");
		if(other.equals(""))oo="";
	  String[] li = request.getParameterValues("license");
	  String y1 = request.getParameter("y1");
	  String c1 = request.getParameter("c1");
	  String t1 = request.getParameter("t1");
	  String y2 = request.getParameter("y2");
	  String c2 = request.getParameter("c2");
	  String t2 = request.getParameter("t2");
	  String note = request.getParameter("note");
   %>


<br>
   <table>
   <tr>
	<th align="center" colspan="6" style="height:50px;font-size:24px;background:#FFFFBB;">履歷表</th>
  </tr>
  <tr>
    <th>姓名</th>
	<td><%=name%></td>
	<th>性別</th>
	<td><%=gender%></td>
	<th>生日</th>
	<td><%=birth%></td>
  </tr>

  <tr>
    <th>連絡電話</th>
	<td colspan="2"><%=phone%></td>
	<th>最高學歷</th>
	<td colspan="2"><%=school%></td>
  </tr>
  <tr>
    <th>電子郵件</th>
	<td colspan="6"><%=mail%></td>
  </tr>
  <tr>
	<th rowspan="5">語言能力</th>
	<td style="text-align:center;">中文</td>
	<td><%=cc%></td>
	<th rowspan="5">休閒娛樂</th>
	<td rowspan="5" colspan="2" style="text-align:center;">
		<% 	if(h!=null){for(int i=0;i<h.length;i++){
			out.println(h[i]);
			}}else out.println("無");%>
	</td>
  </tr>
  <tr><td style="text-align:center;">英文</td><td><%=ee%></td></tr>
  <tr><td style="text-align:center;">日文</td><td><%=jj%></td></tr>
  <tr><td style="text-align:center;">韓文</td><td><%=kk%></td></tr>
  <tr><td style="text-align:center;"><%=other%></td><td><%=oo%></td></tr>
  <tr>
    <th>持有駕照</th>
	<td colspan="6">
		<% 	if(li!=null){for(int j=0;j<li.length;j++){
			out.println(li[j]+"；");
			}}else out.println("無");%>
	</td>
  </tr>
  <tr>
	<th rowspan="3">工作經驗</th>
	<th>年份</th>
    <th colspan="2">公司名稱</th>
    <th colspan="2">職稱</th>
  </tr>
  <tr>
    <td style="text-align:center;"><%=y1%></td>
    <td style="text-align:center;" colspan="2"><%=c1%></td>
    <td style="text-align:center;" colspan="2"><%=t1%></td>
  </tr>
  <tr>
    <td style="text-align:center;"><%=y2%></td>
    <td style="text-align:center;" colspan="2"><%=c2%></td>
    <td style="text-align:center;" colspan="2"><%=t2%></td>
  </tr>
  <tr>
	<th style="height:150px">自我介紹</th>
	<td colspan="5"><%=note%></td>
  </tr>
</table>
</body>
</html>
