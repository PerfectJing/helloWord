# helloWord 我的第一个项目
helloWord
光标聚焦事件（onfocus）
当网页中的对象获得聚点时，执行onfocus调用的程序就会被执行。
如下代码, 当将光标移到文本框内时，即焦点在文本框内，触发onfocus 事件，并调用函数message()。
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 光标聚焦事件 </title>
  <script type="text/javascript">
    function message(){
	  alert("请选择，您现在的职业！");
	}
  </script>
</head>
<body>
请选择您的职业：<br>
  <form >
 
    <select name="career"  onfocus="message()"> 
      <option>学生</option> 
      <option>教师</option> 
      <option>工程师</option> 
      <option>演员</option> 
      <option>会计</option> 
    </select> 
  </form>
</body>
</html>
