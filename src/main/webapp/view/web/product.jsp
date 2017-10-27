<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath %>resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<link href="<%=basePath %>resources/web/font/iconfont.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>resources/web/css/common.css" rel="stylesheet">
<link href="<%=basePath %>resources/web/css/jw.css" rel="stylesheet">
<link href="<%=basePath %>resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">
<script src="<%=basePath %>resources/web/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>resources/web/layer/layer.js"></script>
<script src="<%=basePath %>resources/web/echart/dist/echarts.js"></script>
<link href="<%=basePath %>resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">
<title>Insert title here</title>
</head>
<body>

<fieldset >
 <div class="sdbanner probanner"></div>
    <div class="proMain">
    	<div class="hwpzNav">
    		<ul>
    			<li class="first"><a class="active" href="<%=basePath%>product?P_P_PYTE=0">固收类理财</a></li>
    			<li class="second"><a href="<%=basePath%>product?P_P_PYTE=1">私募基金</a></li>
    			<li class="three"><a href="<%=basePath%>product?P_P_PYTE=2">海外配置</a></li>
    			<li class="four"><a href="<%=basePath%>product?P_P_PYTE=3">股权基金</a></li>
    		</ul>
    	</div>
        <div class="sdShaix">
        	<ul>
            	<li class="first">标的类型：</li>
               		<li><a href="<%=basePath%>product?codevalue='whole'" id="11">全部</a></li>
               		<c:forEach items="${systemParams}" var="sp">
               		<li><a href="<%=basePath%>product?codevalue='${sp[3]}'" id="42">${sp[2]}</a></li>
               		</c:forEach>
            </ul>
        	<ul>
            	<li class="first">年化收益：</li>
               		<li><a href="<%=basePath%>product?codevalue='whole'">全部</a></li>
               		<c:forEach items="${pYeardatas}" var="Yeardatas">
               		<li><a href="<%=basePath%>product?codevalue='${Yeardatas.p_datavalue}'" id="42">${Yeardatas.p_dataname}%</a></li>
               		</c:forEach>
            </ul>
        	<ul>
            	<li class="first">项目期限：</li>
               		<li><a href="<%=basePath%>product?codevalue='whole'">全部</a></li>
               		<c:forEach items="${systemPeriod}" var="syspd">
               		<li><a href="<%=basePath%>product?codevalue='${syspd[3]}'" id="42">${syspd[2]}</a></li>
               		</c:forEach>
            </ul>
        	<ul>
            	<li class="first">标的状态：</li>
               		<li ><a href="<%=basePath%>product?codevalue='whole'">全部</a></li>
               		<c:forEach items="${systemObj}" var="sys">
               		<li><a href="<%=basePath%>product?codevalue='${sys[3]}'" id="42">${sys[2]}</a></li>
               		</c:forEach>
            </ul>
        </div>

<meta name="keywords" content="盈+，盈，社区金融，O2O社区金融，社区金融O2O，O2O，互联网+社区金融，O2O连锁，社区门店，首家社区金融，社区金融服务，综合金融，互联网金融，体验中心，普惠金融，金融创新，社区化，普惠化，全渠道化，互联网线上平台，O2O交易，全国首家，盈十，金融衍生品，固收类理财，私募基金，股权基金，股指期货，玩转股指，商品期货，国际期货，外盘，A50，沪深300，中证500，上证50" />
<meta name="description" content="盈+——全国首家互联网金融交流体验中心，与您共盈，给财富做加法。" />
<link href="/winplus/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<div class="ajaxContainer">
	<!-- 异步内容开始 -->
			<c:forEach items="${lSubjects }" var="isub">
					<ul class="tbList">
						<li class="first">
									<span class="ico zq"></span>
							<h2><em>投</em>${isub[4]}</h2>
							<i></i>
						</li>
						<li class="second">					
							<div class="txt1">
								<h2>${isub[8] }</h2>
								<p>标的总额(万)</p>
							</div>
							<div class="txt1">
								<h2>
								<fmt:formatNumber type="number"  pattern="#" value="${isub[19]-1 }"  />
								
								<span style="font-size:18px;">+1.0%</span></h2>
								<p>年化收益</p>
							</div>
							
							<div class="txt2">
								<h2>￥
								${isub[7]}
								</h2>
								<p>起购金额(元)</p>
							</div>
							
							<div class="txt2">
								<h2>${isub[11]}天</h2>
								<p>投资期限</p>
							</div>
						</li>
						<li class="three">
								<a href="#1">企业担保</a><span>中国人保财险承保</span>
								<p>计息日期：当天投资，立即计息<br>已购人数：${isub[27]+isub[32]}人</p>
						</li>
						<li class="four">
								
						</li>
						<li class="five">
							<a class="abtn" href="/winplus/subject/subjectContent/${isub[1]}">购买</a>
						</li>
					</ul>
					</c:forEach>
					
	<!-- 异步内容结束 -->
	
	
	<div class="llpage">
		<div class="in">
			
				<a class="prev_page">上页</a>
			
			
					<a class="now" >1</a>
			
			
				<a class="next_page" rel="next">下页</a>
		</div>
	</div>
</div>
<script type="text/javascript">
	function getJsonInfo(url) {
		$.get(url, 'json', function(data) {
			$(".ajaxContainer").empty();
			$(".ajaxContainer").append(data);
		});
	}
		require.config({
            paths: {
                echarts: '/winplus/resources/web/echart/dist/'
            }
        });
		require(
			[
				'echarts',
				'echarts/chart/pie'
			],
			function (ec) {
				var labelTop = {
						normal : {
							color:'#ff503f',
							label : {
								show : false,
								position : 'center',
								formatter : '{b}',
								textStyle: {
									baseline : 'bottom'
								}
							},
							labelLine : {
								show : false
							}
						}
					};
				var labelFromatter = {
					normal : {
						label : {
							formatter : function (params){
								return 100 - params.value + '%'
							},
							textStyle: {
								color:'#666',
								baseline : 'middle'
							}
						}
					},
				};
				var labelBottom = {
					normal : {
						color: '#f8f8f8',
						label : {
							show : true,
							position : 'center'
						},
						labelLine : {
							show : false
						}
					}
				};
				var radius = [30,35];
				var myChart1 =document.getElementsByClassName('yuan');
				for(i=0;i<myChart1.length;i++){
					var num = myChart1[i].getAttribute('data-num');
					ec.init(myChart1[i]).setOption({
						series : [
							{
								type : 'pie',
								center : ['50%', '50%'],
								radius : radius,
								x: '0%', // for funnel
								itemStyle : labelFromatter,
								data : [
									{name:'other', value:100-num, itemStyle : labelBottom},
									{name:'占比', value:num,itemStyle : labelTop}
								]
							},
						]
					});
				}
			}
		);
    </script>    </div>
   
</fieldset>



</body>
</html>