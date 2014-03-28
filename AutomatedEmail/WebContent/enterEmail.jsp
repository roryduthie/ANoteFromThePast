<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Header.jsp" />
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<title>Note from the Past</title>
</head>
<body>
	<br><br><br><br><br>
	<br><br><br><br><br><br>
	
<%


String fromEmail = "";
String toEmail = "";
String subject = "";
String message = "";
String dateError="";
String emailToError="";
String emailFromError="";
String emailSuccess="";
Date dNow = new Date();
Calendar cal = new GregorianCalendar();
int year = cal.get(Calendar.YEAR);
int month = (cal.get(Calendar.MONTH) + 1);
int day = cal.get(Calendar.DAY_OF_MONTH);

String[] numArray = {"01","02","03","04","05","06","07","08","09"};
String[] monthArray = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};

try{
fromEmail = request.getAttribute("emailFrom").toString();
toEmail = request.getAttribute("emailTo").toString();
subject = request.getAttribute("subject").toString();
message = request.getAttribute("message").toString();
dateError = request.getAttribute("dateError").toString();
emailToError = request.getAttribute("emailToError").toString();
emailFromError = request.getAttribute("emailFromError").toString();


day = Integer.parseInt(request.getAttribute("day").toString());
month = Integer.parseInt(request.getAttribute("month").toString());
year = Integer.parseInt(request.getAttribute("year").toString());

} catch (Exception e)
{
}


%>
<div class="col1">
	<p><b> What Is A Note From The Past? </b></p>
	<p> Have you ever wanted to send a message to someone in the future, but you're not sure you have enough time?  </p>
	<p> A note from the past allows you to send notes to a loved one. These notes are sent on a date of your choice.</p>
	<p> Make sure to add <a href=mailto:anotefromthepast@gmail.com>anotefromthepast@gmail.com</a> so your email doesn't go in your spam folder.</p>
</div>
<div class="col3">
	<a class="twitter-timeline" href="https://twitter.com/NoteFromThePast" data-widget-id="449191330028081152">Tweets by @NoteFromThePast</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


</div>
<div class ="col2">
<center>
<form action="StoreEmail" method="get" id="emailform">
	<table>
	
	<tr valign="top">
	   	<td>
	   	<font color=
   		<% if (emailFromError.equals("true")){
   		%>'red'<%
   		} else {
   		%>'black'<%
   		}%>><b>Email From:</b></font></td>  
	   	<td><input type="text" name="emailFrom" size=50 value="<%=fromEmail%>" class="textBox"></td>
	   	<% if (emailFromError.equals("true")){
   		%><td><font color='red'>Please enter a valid email address</font></td><%
   		}%> 
   	</tr>
   	<tr valign="top">
	   	<td>
	   	<font color=
   		<% if (emailToError.equals("true")){
   		%>'red'<%
   		} else {
   		%>'black'<%
   		}%>><b>Email To:</b></font></td> 
	   	<td><input type="text" name="emailTo" size=50 value="<%=toEmail%>"class="textBox"></td>
	   	<% if (emailToError.equals("true")){
   		%><td><font color='red'> Please enter a valid email address</font></td><%
   		}%>
   	</tr>
   	<tr valign="top">
   		<td><b>Subject:</b></td> 
   		<td><input type="text" name="emailSubject" align="right" size=50 value="<%=subject%>"class="textBox"> </td>
   	</tr>
   	<tr valign="top">
   		<td><b>Message:</b></td>
   		<td><textarea name="emailMessage" form="emailform" rows=5 cols=38 class="textBox"><%=message%></textarea> </td>
   	</tr>
   	<tr valign="top">
   		<td>
   		<font color=
   		<% if (dateError.equals("true")){
   		%>'red'<%
   		} else {
   		%>'black'<%
   		}%>><b>Date to Deliver:</b></font></td>
   		<td>
			<%
			//Day List
			out.print("<select name=\"Day\"> \n");
			for (int i=1; i<32; i++)
			{
				if (i<10){
					if (i == day){
						out.print("<option value=\"" + numArray[i-1] + "\" selected>" + numArray[i-1] + "</option> \n");
					} else {
					out.print("<option value=\"" + numArray[i-1] + "\">" + numArray[i-1] + "</option> \n");
					}
				}else{
					if (i == day){
						out.print("<option value=\"" + i + "\" selected>" + i + "</option> \n");
					} else {
					out.print("<option value=\"" + i + "\">" + i + "</option> \n");
					}
				}
				
			}
			
			out.print("</select>");
			
			
			//Month List
			out.print("<select name=\"Month\"> \n");
			for (int i=1; i<13; i++)
			{
				if (i<10){
					if (i == month){
						out.print("<option value=\"" + numArray[i-1] + "\" selected>" + monthArray[i-1] + "</option> \n");
					} else {
					out.print("<option value=\"" + numArray[i-1] + "\">" + monthArray[i-1] + "</option> \n");
					}
				} else {
					if (i == month){
						out.print("<option value=\"" + i + "\" selected>" + monthArray[i-1] + "</option> \n");
					} else {
					out.print("<option value=\"" + i + "\">" + monthArray[i-1] + "</option> \n");
					}
				}
			}
			
			out.print("</select>");
			
			
			//Year List
			out.print("<select name=\"Year\"> \n");
			for (int i=2014; i<2025; i++)
			{
				if (i == year){
					out.print("<option value=\"" + i + "\" selected>" + i + "</option> \n");
				} else {
				out.print("<option value=\"" + i + "\">" + i + "</option> \n");
				}
			}
			
			out.print("</select>");
			
			%>
			</td>
			
   			<td><% if (dateError.equals("true")){
   		%><font color='red'> Please enter a valid date</font><%
   		}%>
   		</td>
   	</tr>
   	<tr>
   	<td></td>
   	<td><input type="submit" name="submit" value="Send a Note from the Past!" id="submitButton"></td>
   	
   			
   	
	</table>
	
	
	
</form>
</center>
</div>

<p id="likeButton"><iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2F127.0.0.1%3A8080%2FAutomatedEmail%2FenterEmail.jsp&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:125px; height:21px;" allowTransparency="true"></iframe></p>
<p id="copyRight">Copyright 2014 TPmP &copy;</p>
</body>
</html>