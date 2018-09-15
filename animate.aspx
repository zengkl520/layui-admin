<%@ Page Language="C#" AutoEventWireup="true" CodeFile="animate.aspx.cs" Inherits="animate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>swiper</title>
    <link rel="stylesheet" href="javascript/layui/css/layui.css" />
    <link rel="stylesheet" href="css/animate/animate.min.css"/>
</head>
<body >
    <form id="form1" runat="server">
    
    <div >
       <p id="demo" class="animated" style="position:absolute;top:40%;left:40%;color:orangered;font-size:40px;opacity:0;" >Hello World!</p>
    </div>

    </form>
    <script src="javascript/jquery.min.js"></script>
    <script src="javascript/layui/layui.js"></script>
    <script>
        $('#demo').addClass('rollIn').one(animationEnd, function () {
            $(this).removeClass('rollIn');
        });
    </script>

  
</body>
</html>
