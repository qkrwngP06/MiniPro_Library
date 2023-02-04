<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>회원가입 페이지</title>
        <link rel="stylesheet" href="../../../resources/css/enroll.css">
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
                                <li>
                                    <a href="/member/login.kh">로그인</a>
                                </li>
                                <li>
                                    <a href="/member/enrollView.kh">회원가입</a>
                                </li>
                                <li>사이트맵</li>
                                <li class="shares">
                                    <a href="https://www.facebook.com/sdmlibrary" target="_blank" class="newWin">
                                        <img src="../../../img/ico_facebook.jpg" alt="페이스북">
                                    </a>
                                    <a href="https://twitter.com/sdmlibrary" target="_blank" class="newWin">
                                        <img src="../../../img/ico_twitter.jpg" alt="트위터">
                                    </a>
                                    <a href="https://www.youtube.com/channel/UCv5lNP1Jz5UBHgYryNoWzgA" target="_blank"
                                        class="newWin">
                                        <img src="../../../img/youtube.png" alt="유튜브">
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
                                <a href="../../../index.jsp">
                                    <img src="../../../img/library_logo.png" alt="도서관로고">
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
            <div id="container">
                <div class="enroll_wrapper">
                    <h2>회원가입</h2>
                    <div class="enroll_input">
                        <form action="/member/enrollView.kh" method="post">
                            <fieldset>
                                <legend></legend>
                                <ul id="member-register">
                                    <li>
                                        <label for="member-id">아이디</label>
                                        <input type="text" class="input" id="member-id" name="member-id"
                                            placeholder="아이디를 입력하세요">
                                    </li>
                                    <li>
                                        <label for="member-pw">비밀번호</label>
                                        <input type="password" class="input" id="member-pw" name="member-pw"
                                            placeholder="비밀번호를 입력하세요">
                                    </li>
                                    <li>
                                        <label for="member-name">이름</label>
                                        <input type="text" class="input" id="member-name" name="member-name"
                                            placeholder="이름을 입력하세요">
                                    </li>
                                    <li>
                                        <label for="age">나이</label>
                                        <input type="text" class="input" id="age" name="member-age"
                                            placeholder="나이를 입력하세요">
                                    </li>
                                    <li>
                                        <label for="gender">성별</label>
                                        남<input type="radio" id="gender" name="member-gender" value="남">
                                        여<input type="radio" name="member-gender" value="여">
                                    </li>
                                    <li>
                                        <label for="phone">전화번호</label>
                                        <input type="text" class="input" id="phone" name="member-phone"
                                            placeholder="전화번호를 입력하세요">
                                    </li>
                                    <li>
                                </ul>
                            </fieldset>
                            <div class="enroll_btn">
                                <input type="submit" value="가입하기" class="btn bgc_point" id="enroll Btn">
                            </div>
                        </form>
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
                                <option value="https://e-lib.sen.go.kr/index.php" label="전자도서관" title="전자도서관"></option>
                                <option value="https://lib.sen.go.kr/books/index.do" label="사서추천도서포털" title="사서추천도서포털">
                                </option>
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
                                            <img src="../../../img/seoul.png" alt="서울특별시교육청">
                                        </a>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <a href="https://www.youtube.com/user/GoodSenNews" target="_blank"
                                            class="newWin">
                                            <img src="../../../img/seoulYoutube.png" alt="서울특별시교육청 유튜브">

                                        </a>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <a href="https://www.nanet.go.kr/main.do" target="_blank" class="newWin">

                                            <img src="../../../img/kuklibrary.png" alt="국회도서관">
                                        </a>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <a href="https://www.nl.go.kr/" target="_blank" class="newWin">

                                            <img src=".../../../img/junganglib.png" alt="국립중앙도서관">
                                        </a>
                                    </span>
                                </li>
                                <li>
                                    <span>
                                        <a href="https://www.dlibrary.go.kr/" target="_blank" class="newWin">

                                            <img src="../../../img/arealib.jpg" alt="국가전자도서관">
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