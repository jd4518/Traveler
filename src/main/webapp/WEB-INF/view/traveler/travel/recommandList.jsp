<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="travelerApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>recommandList.jsp</title>
</head>
<body class="container">
      <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>여행지 추천 게시판</h1>
          </div>
          <div class="row">
            <div class="col-xs-6 col-lg-4" data-ng-repeat="recommand in recommandLists">
              <h2><a style="text-decoration: none; color: black;" href="#/recommandDetail/{{recommand.listNo}}">{{recommand.title}}</a></h2>
              <p><img alt="" src="../../img/{{recommand.picture}}" width="200" height="200"></p>
            </div><!--/.col-xs-6.col-lg-4-->
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

      </div><!--/row-->
<div data-uib-pagination 
							data-total-items="paging.totalItem" style="width:800px;" 
							data-ng-model="pageNo"
							data-max-size="10"
							data-ng-change="selectPage()"
							data-boundary-links="true">
						</div>
<div><a href="#/recommandInsert" class="btn btn-primary">글쓰기</a></div>

<hr>	

</body>
</html>