<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>도서관_메인페이지</title>
            <link rel="stylesheet" href="./resources/css/main.css">
        </head>

        <body>
            <div id="wrap">
                <!--header 시작-->
                <div id="header">
                    <div id="tnbWrap">
                        <div class="section">
                            <div class="util" style="height: 40px;">
                                <ul style="height: 40px;">
                                    <li>비대면자격확인인증</li>
                                    <c:if test="${sessionScope.memberId eq null }">
                                        <li>
                                            <a href="/member/login.kh">로그인</a>
                                        </li>
                                        <li>
                                            <a href="/member/enrollView.kh">회원가입</a>
                                        </li>
                                    </c:if>

                                    <c:if test="${sessionScope.memberId ne null }">
                                        <li>
                                            ${sessionScope.memberId} 님 환영합니다
                                        </li>
                                        <li>
                                            <a href="/member/logout.kh">로그아웃</a>
                                        </li>
                                    </c:if>
                                    <li>사이트맵</li>
                                    <li class="shares">
                                        <a href="https://www.facebook.com/sdmlibrary" target="_blank" class="newWin">
                                            <img src="./img/ico_facebook.jpg" alt="페이스북">
                                        </a>
                                        <a href="https://twitter.com/sdmlibrary" target="_blank" class="newWin">
                                            <img src="./img/ico_twitter.jpg" alt="트위터">
                                        </a>
                                        <a href="https://www.youtube.com/channel/UCv5lNP1Jz5UBHgYryNoWzgA"
                                            target="_blank" class="newWin">
                                            <img src="./img/youtube.png" alt="유튜브">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div id="gnbWrap">
                        <div class="Gnb" style="height:93px;">
                            <div class="section">
                                <h1 class="logo">
                                    <a href="index.jsp">
                                        <img src="./img/library_logo.png" alt="도서관로고">
                                    </a>
                                </h1>
                                <div class="g-menu">
                                    <ul class="gnbMenu">
                                        <li>
                                            <a href="/book/list">
                                                <span>자료검색</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span>프로그램</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/notice/list">
                                                <span>공지사항</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span>도서관 안내</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/member/myInfo.kh?member-id=${sessionScope.memberId }">
                                                <span>마이라이브러리</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--header 끝 -->


                <!--Container 중간부분시작 -->
                <div id="Container">
                    <div class="visual">
                        <h2>
                            <span>책, 세상과 통하다</span>
                            <strong>서대문도서관</strong>
                        </h2>
                        <div class="search">
                            <form id="mainSearchForm" action="">
                                <div class="srchBox">
                                    <label for="ch_1">
                                        <input type="radio" id="ch_1" name="mainSearchType"
                                            checked="checked">자료검색</label>
                                    <label for="ch_2"><input type="radio" id="ch_2" name="mainSearchType"
                                            checked="checked">강좌검색</label>
                                    <div class="srch">
                                        <input type="text" id="search_text_1" name="search_text" title="검색어를 입력해주세요."
                                            placeholder="검색어를 입력해주세요.">
                                        <a href="#" class="btn-link-srch" id="main-search-btn"><span>Search</span></a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="content">
                        <div class="section">
                            <ul class="link">
                                <li class="c1">
                                    <a href="#" alt="에버러닝">
                                        <img src="./img/everrunning.png" alt="에버러닝" class="icon1"></a>
                                    <span class="qtxt">에버러닝</span>
                                </li>
                                <li class="c2">
                                    <a href="#" alt="이용안내">
                                        <img src="./img/guide.png" alt="이용안내" class="icon2"></a>
                                    <span class="qtxt">이용안내</span>
                                </li>
                                <li class="c3">
                                    <a href="#" alt="희망도서신청">
                                        <img src="./img/hopebooks.png" alt="희망도서신청" class="icon3"></a>
                                    <span class="qtxt">희망도서신청</span>
                                </li>
                                <li class="c4">
                                    <a href="#" alt="디지털예약">
                                        <img src="./img/digital.png" alt="디지털예약" class="icon4"></a>
                                    <span class="qtxt">디지털예약</span>
                                </li>
                                <li class="c5">
                                    <a href="#" alt="자율학습실">
                                        <img src="./img/study.png" alt="자율학습실" class="icon5"></a>
                                    <span class="qtxt">자율학습실</span>
                                </li>
                                <li class="c6">
                                    <a href="#" alt="대출조회/연기">
                                        <img src="./img/rent.png" alt="대출조회/연기" class="icon6"></a>
                                    <span class="qtxt">대출조회/연기</span>
                                </li>
                                <li class="c7">
                                    <a href="#" alt="전자도서관">
                                        <img src="./img/digitallib.png" alt="전자도서관" class="icon7"></a>
                                    <span class="qtxt">전자도서관</span>
                                </li>
                                <li class="c8">
                                    <a href="#" alt="독서문화행사">
                                        <img src="./img/culture.png" alt="독서문화행사" class="icon8"></a>
                                    <span class="qtxt">독서문화행사</span>
                                </li>
                                <li class="c9">
                                    <a href="#" alt="야간대출예약">
                                        <img src="./img/reservation.png" alt="야간대출예약" class="icon9"></a>
                                    <span class="qtxt">야간대출예약</span>
                                </li>
                                <li class="c10">
                                    <a href="#" alt="책바다">
                                        <img src="./img/bookbada.png" alt="책바다" class="icon10"></a>
                                    <span class="qtxt">책바다</span>
                                </li>
                                <li class="c11">
                                    <a href="#" alt="책나래">
                                        <img src="./img/booknarae.png" alt="책나래" class="icon11"></a>
                                    <span class="qtxt">책나래</span>
                                </li>
                                <li class="c12">
                                    <a href="#" alt="사서에게물어보세요">
                                        <img src="./img/qeustion.png" alt="사서에게물어보기" class="icon12"></a>
                                    <span class="qtxt">사서에게물어보기</span>
                                </li>
                            </ul>
                            <!--신착도서 사서추천도서 대출베스트-->
                            <div class="book-list tab">
                                <div class="tit">
                                    <ul>
                                        <li class="active">
                                            <a href="#">신착도서</a>
                                        </li>
                                        <li class>
                                            <a href="#">사서추천도서</a>
                                        </li>
                                        <li class>
                                            <a href="#">대출베스트</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="cont" style="display: block;">
                                    <ul>
                                        <li>
                                            <div class="imgBox">
                                                <a href="#">
                                                    <span class="bookKind">신착</span>
                                                    <span class="img">
                                                        <img src="./img/book_1.jpg" alt="인간들의 가장 은밀한 기억">
                                                    </span>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="imgBox">
                                                <a href="#">
                                                    <span class="bookKind">신착</span>
                                                    <span class="img">
                                                        <img src="./img/book_2.jpg" alt="헬스는 쪼렙입니다만">
                                                    </span>
                                                </a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="imgBox">
                                                <a href="#">
                                                    <span class="bookKind">신착</span>
                                                    <span class="img">
                                                        <img src="./img/book_3.jpg" alt="인류의 미래를 묻다">
                                                    </span>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                    <a href="#" class="btn-link-more">
                                        <i class="fa fa-plus" aria-hidden="true">
                                            <span>+</span>
                                        </i>
                                    </a>
                                </div>
                            </div>
                            <div class="banner">
                                배너
                            </div>
                            <div class="notice tab">
                                <div class="tit">
                                    <ul>
                                        <li class="active">
                                            <a href="#">공지사항</a>
                                        </li>
                                        <li>
                                            <a href="#">독서문화</a>
                                        </li>
                                        <li>
                                            <a href="#">평생교육</a>
                                        </li>
                                    </ul>
                                    <a href="#" class="btn-link-more">
                                        <i class="fa fa-plus" aria-hidden="true">
                                            <span>+</span>
                                        </i>
                                    </a>
                                </div>
                                <!-- 공지사항 내용 -->
                                <div class="cont" data-tab="tab1">
                                    <ul>
                                        <li>
                                            <a href="#">[교육문화강좌]2023년 겨울방학특강 운영안내</a>
                                            <span>2023-01-20</span>
                                        </li>
                                        <li>
                                            <a href="#">2023년 <한국 수어의 날 기념 수어 체험 행사>안내</a>
                                            <span>2023-01-20</span>
                                        </li>
                                        <li>
                                            <a href="#">2023년 희망도서 서비스 운영 안내</a>
                                            <span>2023-01-02</span>
                                        </li>
                                        <li>
                                            <a href="#">2022년 12월 어린이자료실 독서왕 선정</a>
                                            <span>2022-12-30</span>
                                        </li>
                                        <li>
                                            <a href="#">2022년 12월 종합자료실 독서왕 선정</a>
                                            <span>2022-12-30</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 행사안내 -->
                            <div class="promotion tab">
                                <div class="tit">
                                    <ul>
                                        <li class="active">
                                            <a href="#">행사안내</a>
                                        </li>
                                        <li>
                                            <a href="#">영화상영</a>
                                        </li>
                                    </ul>
                                    <a href="#" class="btn-link-more">
                                        <i class="fa fa-plus" aria-hidden="true">
                                            <span>+</span>
                                        </i>
                                    </a>
                                </div>

                                <div class="cont" data-tab="tab1" style="height: 200px;">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <span class="img">
                                                    <img src="./img/christmass.jpeg" alt="어린이실 이벤트"
                                                        style="width: 130px; height: 172px;">
                                                </span>
                                                <strong>[어린이실] 미리...</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="img">
                                                    <img src="./img/SNSEvent.jpeg" alt="산책도서관 SNS 이벤트"
                                                        style="width: 130px; height: 172px;">
                                                </span>
                                                <strong>산책도서관 SNS...</strong>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!-- 달력 -->
                            <div class="calender">
                                <div class="tit">
                                    <strong>휴관일 및 행사안내</strong>
                                    <a href="#" class="btn-link-more">
                                        <i class="fa fa-plus" aria-hidden="true">
                                            <span>+</span>
                                        </i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- footer -->
                <div id="footWrap">
                    <div id="footer">
                        <div class="info">
                            <div class="section">
                                <ul>
                                    <li>정보공개알림</li>
                                    <li><strong>개인정보처리방침</strong></li>
                                    <li>이용규정</li>
                                    <li>이메일무단수집거부</li>
                                    <li>전화번호안내</li>
                                    <li>사이트맵</li>
                                    <li>오시는길</li>
                                </ul>
                                <select onchange="if(this.value) window.open(this.value);" name="" title="타기관 바로가기">
                                    <option value="" title="타기관 바로가기">타기관 바로가기</option>
                                    <option value="https://lib.sen.go.kr/lib/index.do?getContextPath=" label="통합도서관"
                                        title="통합도서관"></option>
                                    <option value="https://e-lib.sen.go.kr/index.php" label="전자도서관" title="전자도서관">
                                    </option>
                                    <option value="https://lib.sen.go.kr/books/index.do" label="사서추천도서포털"
                                        title="사서추천도서포털"></option>
                                    <option value="https://everlearning.sen.go.kr/index.do" label="평생학습포털(에버러닝)"
                                        title="평생학습포털(에버러닝)"></option>
                                    <option value="http://sdmlib.sen.go.kr" label="서대문도서관" title="서대문도서관"></option>
                                    <option value="http://jdlib.sen.go.kr" label="정독도서관" title="정독도서관"></option>
                                    <option value="http://jnlib.sen.go.kr" label="종로도서관" title="종로도서관"></option>
                                </select>
                            </div>
                        </div>

                        <!--광고 배너-->
                        <div class="siteLink">
                            <div class="section">
                                <ul class="banner-roll">
                                    <li>
                                        <span>
                                            <a href="https://sen.go.kr/main/services/index/index.action" target="_blank"
                                                class="newWin">
                                                <img src="./img/seoul.png" alt="서울특별시교육청">
                                            </a>
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <a href="https://www.youtube.com/user/GoodSenNews" target="_blank"
                                                class="newWin">
                                                <img src="./img/seoulYoutube.png" alt="서울특별시교육청 유튜브">

                                            </a>
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <a href="https://www.nanet.go.kr/main.do" target="_blank" class="newWin">

                                                <img src="./img/kuklibrary.png" alt="국회도서관">
                                            </a>
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <a href="https://www.nl.go.kr/" target="_blank" class="newWin">

                                                <img src="./img/junganglib.png" alt="국립중앙도서관">
                                            </a>
                                        </span>
                                    </li>
                                    <li>
                                        <span>
                                            <a href="https://www.dlibrary.go.kr/" target="_blank" class="newWin">

                                                <img src="./img/arealib.jpg" alt="국가전자도서관">
                                            </a>
                                        </span>
                                    </li>
                                </ul>

                                <a href="#" class="btn-link-more">배너전체보기</a>
                            </div>
                        </div>

                        <div class="section">
                            <div class="address">
                                <dl>
                                    <dd>(우) (00000) 서울 서대문구 ●●●로 ●●●(●●동, ●●●●●교육청 ●●●도서관)</dd>
                                </dl>
                                <dl>
                                    <dt>대표전화</dt>
                                    <dd>0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>팩스번호</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>종합자료실</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>어린이자료실</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>디지털자료실</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>행정지원과</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>정보자료과</dt>
                                    <dd>02-0000-0000</dd>
                                </dl>
                                <dl>
                                    <dt>독서문화진흥과</dt>
                                    <dd>02-0000-0000 </dd>
                                </dl>
                                <span>Copyright ⓒ 2017 Seodaemun Public Library. All Rights Reserved.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>