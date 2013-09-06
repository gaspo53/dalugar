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
        padding-top: 20px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 60px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
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

   <body>

    <div class="container-narrow">
      
      <tiles:insertAttribute name="menu"> </tiles:insertAttribute>
      <hr>
       <tiles:insertAttribute name="body"></tiles:insertAttribute>
      <hr>

      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${contextPath}/static/js/jquery.min.js"></script>
    <script src="${contextPath}/static/js/bootstrap.min.js"></script>


  </body>
</html>
