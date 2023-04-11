<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>식고수 신청 | 볕 들 무렵</title>
    <link rel="stylesheet" href="../../assets/css/gosuApplyWrite.css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  </head>
  <body>
  <jsp:include
	page="${pageContext.request.contextPath}/app/header/header.jsp" />
    <div class="gosu-apply">
      <div class="apply-container">
        <!-- form action 작성 -->
        <form action="#" id="write-form" method="post" enctype="multipart/form-data">
          <h1 class="title">
            <span class="story-icon"></span> 식고수 신청
            <span class="story-txt">고수가 된다면 인기를 얻을 수 있습니다!</span>
          </h1>
          <!-- 제목입력 -->
          <div class="apply-title">
            <input type="text" id="title" name="storyTitle" placeholder="* 식고수 신청 제목을 입력하세요. " required />
          </div>
          <!-- 고수분야 선택 -->
          <div class="gosu-field"><h1 class="mini-title">고수 분야 선택</h1>
              <ul class="field-list" >
                <li><input type="checkbox" id="checkboxOne" value="#"><label for="checkboxOne">꽃</label></li>
                <li><input type="checkbox" id="checkboxTwo" value="#"><label for="checkboxTwo">나무</label></li>
                <li><input type="checkbox" id="checkboxThree" value="#" checked><label for="checkboxThree">수경/행잉식물</label></li>
                <li><input type="checkbox" id="checkboxFour" value="#"><label for="checkboxFour">식충식물</label></li>
                <li><input type="checkbox" id="checkboxFive" value="#"><label for="checkboxFive">중,대형식물</label></li>
                <li><input type="checkbox" id="checkboxSix" value="#" checked><label for="checkboxSix">선인장/다육식물</label></li>
                <li><input type="checkbox" id="checkboxSeven" value="#"><label for="checkboxSeven">공기정화/관엽식물</label></li>
                <li><input type="checkbox" id="checkboxEight" value="#"><label for="checkboxEight">열매식물</label></li>
                <li><input type="checkbox" id="checkboxNine" value="#"><label for="checkboxNine">야생화/허브/씨앗</label></li>
                <li><input type="checkbox" id="checkboxTen" value="#"><label for="checkboxTen">분재</label></li>
                <li><input type="checkbox" id="checkboxEleven" value="#"><label for="checkboxEleven">채소/약초</label></li>
                <li><input type="checkbox" id="checkboxTwelve" value="#"><label for="checkboxTwelve">해조/이끼</label></li>
              </ul>
          </div>
          <!-- 상세 내용 -->
          <h1 class="mini-title">상세 내용 입력</h1>
          <div class="Content-box">
            <!-- 서머노트 -->
            <div class="summernote-box">
              <div id="summernote" name="storyContent"></div>
            </div>
            <!-- 첨부파일 -->
            <div class="upload-file-container">
              <div class="upload-file">
                <input type="file" id="file" name="boardFile" accept=".jpg, .jpeg, .png" multiple/>
                <div class="upload-box">
                  <div class="upload-text">
                    <div class="upload-icon">
                      <img src="https://www.shouse.garden/images/ico/photo_g.png" class="upload-icon"/>
                    </div>
                    <div class="upload-count">증명자료 업로드</div>
                  </div>
                  <div class="upload-text">증명자료 업로드 가능(<span class="cnt">0</span>/3)</div>
                  <div class="upload-text">파일 형식 : jpg, jpeg, png</div>
                  <div class="upload-text">※ 이미지를 등록하면 즉시 반영됩니다.</div>
                </div>
                <div class="img-controller-box">
                  <ul class="file-list"></ul>
                </div>
              </div>
            </div>
          </div>
          <!-- 등록 취소 버튼-->
          <div class="btn-groups">
            <button type="submit" name="action" value="write" class="submit-btn">등록</button>
            <button type="button" class="cancel-btn">취소</button>
          </div>
        </form>
      </div>
    </div>
    <jsp:include page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
   <!--  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> -->
    <script src="../../assets/js/gosuApplyWrite.js"></script>
  </body>
</html>
