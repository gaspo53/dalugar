<%@  include file="/WEB-INF/views/common/taglibs.jsp" %>
<cw:set var="contextPath" value="<%=request.getContextPath() %>" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title" defaultValue="Dalugar"></tiles:insertAttribute></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
	<link rel="stylesheet" href="${contextPath}/static/css/bootstrap.css" />
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link rel="stylesheet" href="${contextPath}/static/css/bootstrap-responsive.css" />
    <link rel="stylesheet" href="${contextPath}/static/css/dalugar-bootstrap-custom-1.0.css" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

  </head>

  <body>
    
    <tiles:insertAttribute name="navbar"></tiles:insertAttribute>

    <div class="container">
       <tiles:insertAttribute name="body"></tiles:insertAttribute>
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${contextPath}/static/js/jquery.min.js"></script>
    <script src="${contextPath}/static/js/bootstrap.min.js"></script>


  </body>
</html>
