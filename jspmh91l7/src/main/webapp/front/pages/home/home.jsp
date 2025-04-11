<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
		}
		#app {
			position: relative;
			z-index: 1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv1 .box .list .list-item {
			flex: 0 0 ${var1}%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend .recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend .lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv2 .box .list .list-item {
			flex: 0 0 ${var2}%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	.line1 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.line2 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.line3 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.1) rotate(0) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		
		.index-pv1 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
	  
		.swiper-new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
		
		.idea {
		  display: flex;
		  flex-wrap: wrap;
		}
		.idea div {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-repeat: no-repeat;
		  background-size: 100% 100%;
		}
		.recommendIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 250px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.newsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 21%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.listsIdea .box1 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 260px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box2 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box3 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box4 {
			margin: 0 2%;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="baseurl+item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->



			<!-- 推荐 -->

            

			<!-- 新闻资讯 -->
				<!-- 样式三 -->
				<div class="lists index-pv2" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"transparent url(http://codegen.caihongy.cn/20220302/7c5b3adc4e214178b5db5ea687cfbbf4.png) no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
					<div v-if="false && 1 == 1" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"50px 0 50px 130px","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(0, 0, 0, 0)","color":"rgba(255, 255, 255, 1)","borderRadius":"32px","alignItems":"flex-start","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>HOME NEWS</span><span>通知新闻</span>
				    </div>
					<div v-if="false && 1 == 2" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="list">
						<div class="swiper-container" id="newsnews">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"padding":"6px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(0, 0, 0, 0)","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' v-if="newsList.length" v-for="(item,index) in newsList" :key="index" @click="jump('../news/detail.jsp?id='+item.id)">
									<div class="img-box">
										<img :name="item.id" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(255, 255, 255, 1)","borderRadius":"90px 40px 90px 90px","borderWidth":"4px","width":"170px","borderStyle":"solid","height":"250px"}' :src="baseurl+item.picture" alt="" />
									</div>
									<div class="line1" v-if='true' :style='{"isshow":true,"padding":"0","margin":"5px 0","backgroundColor":"rgba(0,0,0,0)","color":"rgba(255, 255, 255, 1)","borderRadius":"0","textAlign":"left","fontSize":"18px"}'>{{item.title}}</div>
								</div>
							</div>
							<!-- 如果需要分页器 -->
							<div class="swiper-pagination"></div>
							<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
				    </div>
					<div v-if="false && 1 == 3" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"100%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 新闻资讯 -->

			

			<!-- 图文列表 -->


		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {







                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#swiper',
								width: '100%',
								height: '400px',
								arrow: 'hover',
								anim: 'default',
								autoplay: 'true',
								interval: '3000',
								indicator: 'none'
							});
						})
					}
				});
                

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
						console.log('rightNewsList',rightNewsList,vue.rightNewsList)
					}
					
					let flag = 3;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let sixSwiper = {
							loop: true,
							speed: 2500,
							slidesPerView: 3,
							spaceBetween: Number(10),
							centeredSlides: true,
							watchSlidesProgress: true,
							autoplay: {
							  delay: 0,
							  stopOnLastSlide: false,
							  disableOnInteraction: false
							}
						}
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', sixSwiper)
						})
					}
				});

                


				


				
			});
		</script>
	</body>
</html>
