<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/follow.css" />
  </head>
  <body>
<%--  <jsp:include page="${pageContext.request.contextPath}/app/header/header.jsp"/> --%>
    <div class="container">
      <section class="top">
        <div class="button">
          <ul class="top-btn-ul">
            <!-- 팔로우, 팔로잉 리스트를 가져옴 비동기?-->
            <!-- active클래스를 줬다 뺐다 -->
            <li class="top-btn active">팔로워</li>
            <li class="top-btn">팔로잉</li>
          </ul>
        </div>
      </section>
      <section class="bottom">
        <!-- 팔로잉/팔로우 리스트 띄우기 -->
        <div class="follow">
          <ul class="follow-list-ul">
            <li class="follow-list">
              <!-- 이 회원의 마이페이지로 이동 -->
              <a href="#">
                <div class="user-photo">
                  <img src="" alt="" />
                </div>
                <div class="user-name">이름</div>
              </a>
              <!-- 버튼을 누르면 마이페이지에 저장됨 -->
              <!-- following 클래스를 줬다뺐다 -->
              <button class="user-follow">팔로우</button>
            </li>
            <li class="follow-list">
              <a href="">
                <div class="user-photo">
                  <img src="" alt="" />
                </div>
                <div class="user-name">이름</div>
              </a>
              <button class="user-follow">팔로우</button>
            </li>
            <li class="follow-list">
              <a href="">
                <div class="user-photo">
                  <img src="" alt="" />
                </div>
                <div class="user-name">이름</div>
              </a>
              <button class="user-follow">팔로우</button>
            </li>
            <li class="follow-list">
              <a href="">
                <div class="user-photo">
                  <img src="" alt="" />
                </div>
                <div class="user-name">이름</div>
              </a>
              <button class="user-follow">팔로우</button>
            </li>
            <li class="follow-list">
              <a href="">
                <div class="user-photo">
                  <img src="" alt="" />
                </div>
                <div class="user-name">이름</div>
              </a>
              <button type="button" class="user-follow">
                팔로우
              </button>
            </li>
          </ul>
        </div>
      </section>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/follow.js"></script>
  </body>
</html>
