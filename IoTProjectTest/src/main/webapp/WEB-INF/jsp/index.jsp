<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="wf-montserrat-n3-active wf-montserrat-n4-active wf-montserrat-n5-active wf-montserrat-n6-active wf-montserrat-n7-active wf-roboto-n3-active wf-roboto-n4-active wf-roboto-n5-active wf-roboto-n6-active wf-roboto-n7-active wf-active">
<!-- begin::Head -->

<head>
    <meta charset="utf-8">

    <title>Metronic | Dashboard</title>
    <meta name="description" content="Latest updates and statistic charts">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    
    
    
    <!-- Firebase App is always required and must be first -->
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-app.js"></script>
	
	<!-- Add additional services you want to use -->
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-firestore.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-messaging.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.0.4/firebase-functions.js"></script>
	
<script src="https://www.gstatic.com/firebasejs/5.4.2/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyAb80-Tjd5fEOncDKqQ3B87SvZLnOxLAs0",
    authDomain: "test1-3c25a.firebaseapp.com",
    databaseURL: "https://test1-3c25a.firebaseio.com",
    projectId: "test1-3c25a",
    storageBucket: "test1-3c25a.appspot.com",
    messagingSenderId: "1038151322273"
  };
  firebase.initializeApp(config);
  var database = firebase.database();
</script>


    <!--begin::Web font -->
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700%7CRoboto:300,400,500,600,700" media="all">
    <script>
        WebFont.load({
            google: {"families":["Montserrat:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
          });
        </script>
    <!--end::Web font -->

    <!--begin::Global Theme Styles -->
    <link href="/resources/css/vendors.bundle.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/style.bundle.css" rel="stylesheet" type="text/css">
    <!--end::Global Theme Styles -->

    <!--begin::Page Vendors Styles -->
    <link href="/resources/css/fullcalendar.bundle.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/line-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/line-awesome-font-awesome.min.css" rel="stylesheet" type="text/css">
    
    
    
    <!--end::Page Vendors Styles -->

    <link rel="shortcut icon" href="/resources/img/favicon.ico">
    <style type="text/css">
    	body {
    		background-image: url("/resources/img/bg-1.jpg");
    	}
    
    
    
        span.im-caret {
            -webkit-animation: 1s blink step-end infinite;
            animation: 1s blink step-end infinite;
        }

        @keyframes blink {

            from,
            to {
                border-right-color: black;
            }

            50% {
                border-right-color: transparent;
            }
        }

        @-webkit-keyframes blink {

            from,
            to {
                border-right-color: black;
            }

            50% {
                border-right-color: transparent;
            }
        }

        span.im-static {
            color: grey;
        }

        div.im-colormask {
            display: inline-block;
            border-style: inset;
            border-width: 2px;
            -webkit-appearance: textfield;
            -moz-appearance: textfield;
            appearance: textfield;
        }

        div.im-colormask>input {
            position: absolute;
            display: inline-block;
            background-color: transparent;
            color: transparent;
            -webkit-appearance: caret;
            -moz-appearance: caret;
            appearance: caret;
            border-style: none;
            left: 0;
            /*calculated*/
        }

        div.im-colormask>input:focus {
            outline: none;
        }

        div.im-colormask>input::-moz-selection {
            background: none;
        }

        div.im-colormask>input::selection {
            background: none;
        }

        div.im-colormask>input::-moz-selection {
            background: none;
        }

        div.im-colormask>div {
            color: black;
            display: inline-block;
            width: 100px;
            /*calculated*/
        }
        
        
        /* Chart.js */
        @-webkit-keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }

            to {
                opacity: 1
            }
        }

        @keyframes chartjs-render-animation {
            from {
                opacity: 0.99
            }

            to {
                opacity: 1
            }
        }

        .chartjs-render-monitor {
            -webkit-animation: chartjs-render-animation 0.001s;
            animation: chartjs-render-animation 0.001s;
        }
    </style>
</head>
<!-- end::Head -->


<!-- begin::Body -->

<body class="m-page--boxed m-body--fixed m-header--static m-aside--offcanvas-default">




    <!-- begin:: Page -->
    <div class="m-grid m-grid--hor m-grid--root m-page">


        <!-- begin::Header -->
        <header id="m_header" class="m-grid__item	m-grid m-grid--desktop m-grid--hor-desktop  m-header ">
            <div class="m-grid__item m-grid__item--fluid m-grid m-grid--desktop m-grid--hor-desktop m-container m-container--responsive m-container--xxl">
                <div class="m-grid__item m-grid__item--fluid m-grid m-grid--desktop m-grid--ver-desktop m-header__wrapper">
                    <!-- begin::Brand -->
                    <div class="m-grid__item m-brand">
                        <div class="m-stack m-stack--ver m-stack--general m-stack--inline">
                            <div class="m-stack__item m-stack__item--middle m-brand__logo">
                                <a href="?page=index&amp;demo=demo4" class="m-brand__logo-wrapper">
                                    <img alt="" src="/resources/img/logo.png">
                                </a>
                            </div>
                            <div class="m-stack__item m-stack__item--middle m-brand__tools">




                                <!-- begin::Responsive Header Menu Toggler-->
                                <a id="m_aside_header_menu_mobile_toggle" href="javascript:;" class="m-brand__icon m-brand__toggler m--visible-tablet-and-mobile-inline-block">
                                    <span></span>
                                </a>
                                <!-- end::Responsive Header Menu Toggler-->


                                <!-- begin::Topbar Toggler-->
                                <a id="m_aside_header_topbar_mobile_toggle" href="javascript:;" class="m-brand__icon m--visible-tablet-and-mobile-inline-block">
                                    <i class="flaticon-more"></i>
                                </a>
                                <!--end::Topbar Toggler-->
                            </div>
                        </div>
                    </div>
                    <!-- end::Brand -->
                    <!-- begin::Topbar -->

                    <!-- end::Topbar -->
                </div>
            </div>
        </header>
        <!-- end::Header -->

        <!-- begin::Body -->
        <div class="m-grid__item m-grid__item--fluid m-grid m-grid m-grid--hor m-container m-container--responsive m-container--xxl">
            <div class="m-grid__item m-grid__item--fluid m-grid m-grid--hor-desktop m-grid--desktop m-body">
                <div class="m-grid__item m-body__nav">
                    <div class="m-stack m-stack--ver m-stack--desktop">
                        <!-- begin::Horizontal Menu -->

                        <!-- end::Horizontal Menu -->
                        <!--begin::Search-->
                        <div class="m-stack__item m-stack__item--middle m-dropdown m-dropdown--arrow m-dropdown--large m-dropdown--mobile-full-width m-dropdown--align-right m-dropdown--skin-light m-header-search m-header-search--expandable m-header-search--skin-">

                            <!--begin::Search Form -->
                            <form class="m-header-search__form">
                                <div class="m-header-search__wrapper">
                                    <span class="m-header-search__icon-search" id="m_quicksearch_search">
                                        <i class="la la-search"></i>
                                    </span>
                                    <span class="m-header-search__input-wrapper">
                                        <input autocomplete="off" type="text" name="q" class="m-header-search__input" value="" placeholder="Search..." id="m_quicksearch_input">
                                    </span>
                                    <span class="m-header-search__icon-close" id="m_quicksearch_close">
                                        <i class="la la-remove"></i>
                                    </span>
                                    <span class="m-header-search__icon-cancel" id="m_quicksearch_cancel">
                                        <i class="la la-times"></i>
                                    </span>
                                </div>
                            </form>
                            <!--end::Search Form -->

                            <!--begin::Search Results -->
                            <div class="m-dropdown__wrapper" style="z-index: 101;">
                                <div class="m-dropdown__arrow m-dropdown__arrow--center"></div>
                                <div class="m-dropdown__inner">
                                    <div class="m-dropdown__body">
                                        <div class="m-dropdown__scrollable m-scrollable m-scroller ps" data-scrollable="true" data-height="300" data-mobile-height="200" style="height: 300px; overflow: hidden;">
                                            <div class="m-dropdown__content m-list-search m-list-search--skin-light">
                                            </div>
                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                                            </div>
                                            <div class="ps__rail-y" style="top: 0px; right: 4px;">
                                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--end::Search Results -->
                        </div>
                        <!--end::Search-->
                    </div>
                    
                    
                    
                    <!-- 상단 간격 -->
                    <div class="m-subheader ">
						<div class="d-flex align-items-center">
					 		<div class="mr-auto">
					 			<h3 class="m-subheader__title ">Dashboard</h3>			
					 		</div>
					  		<div>
	 							<span class="m-subheader__daterange" id="m_dashboard_daterangepicker">
									<span class="m-subheader__daterange-label">
										<span class="m-subheader__daterange-title">Today:</span>
										<span class="m-subheader__daterange-date m--font-brand">Sep 7</span>
									</span>
									<a href="#" class="btn btn-sm btn-brand m-btn m-btn--icon m-btn--icon-only m-btn--custom m-btn--pill">
										<i class="la la-angle-down"></i>
									</a>
								</span>
					  		</div>
						</div>
					</div>
                    
                    <!-- 이하에 차트 삽입 -->
                    <div class="m-content">
						<div class="m-portlet">
							<div class="m-portlet__body  m-portlet__body--no-padding">
								<div class="row m-row--no-padding m-row--col-separator-xl">
									<div class="col-xl-4">
										<div class="m-widget14">
											<div class="m-widget14__header m--margin-bottom-30">
												<h3 class="m-widget14__title">Daily Sales</h3>
												<span class="m-widget14__desc">
													Check out each collumn for more details
												</span>
											</div>
										
											<div class="m-widget14__chart" style="height:120px;">
												<div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
													<div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
														<div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
													</div>
													
													<div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
														<div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
													</div>
												</div>
												<canvas id="m_chart_daily_sales" width="356" height="120" class="chartjs-render-monitor" style="display: block; width: 356px; height: 120px;"></canvas>
											</div>
										
										
										</div>
									</div>
									
									<div class="col-xl-4">
									</div>
									
									<div class="col-xl-4">
									</div>
								</div>
							</div>
						</div>
					</div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!-- 차트 끝 -->
                    
                </div>

            </div>
        </div>
        <!-- begin::Body -->




















        <!-- begin::Footer -->
        <footer class="m-grid__item		m-footer ">
            <div class="m-container m-container--responsive m-container--xxl">

                <div class="m-footer__wrapper">
                    <div class="m-stack m-stack--flex-tablet-and-mobile m-stack--ver m-stack--desktop">
                        <div class="m-stack__item m-stack__item--left m-stack__item--middle m-stack__item--last">
                            <span class="m-footer__copyright">
                                2017 © Metronic theme by <a href="https://keenthemes.com" class="m-link">Keenthemes</a>
                            </span>
                        </div>

                    </div>
                </div>
            </div>
        </footer>



    </div>
    <!-- end::Scroll Top -->
    <!-- begin::Quick Nav -->

    <!-- begin::Quick Nav -->
    <!--begin::Global Theme Bundle -->
    <script src="/resources/js/vendors.bundle.js" type="text/javascript"></script>
    <script src="/resources/js/scripts.bundle.js" type="text/javascript"></script>
    <!--end::Global Theme Bundle -->

    <!--begin::Page Vendors -->
    <script src="/resources/js/fullcalendar.bundle.js" type="text/javascript"></script>
    <!--end::Page Vendors -->

    <!--begin::Page Scripts -->
    <script src="/resources/js/dashboard.js" type="text/javascript"></script>
    <!--end::Page Scripts -->

</body>

</html>