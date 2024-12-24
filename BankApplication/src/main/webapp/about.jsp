<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
body{
	height:100vh;
}

	.content{
		margin-top:20px;
		padding:10px;
		border-top-left-radius:20px;	
		border-bottom-right-radius:20px;
	}
	.content h2{
	
    font-size: 34px;
    line-height: 36px;
    letter-spacing: 0;
    color: #162b75 !important;
    margin: 0 !important;
    
	}
	.content p{
		max-width:100%;
		letter-spacing:1px;
		font-size:20px;
	}
	.mission{
		margin-top:20px;
		background-color:#f4f6f9;
		border-top-left-radius:30px;
		
	}
	.mission h2{
		display:inline;
		float:left;
		width:150px;
		background-color:orange;
		padding:10px;
		height:95px;
		border-top-left-radius:30px;
		border-bottom-right-radius:30px;
		
	}
	.mission p{
		
		padding-left:15px;
		height:95px;
		margin-left:150px;
		padding:5px;
		font-size:20px;
	}
	.other{
		margin-top:20px;
		background-color:#f4f6f9;
		padding:10px;
		text-align:justify;
		font-size:20px;
		border-radius:10px;
		
	}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
	<div class="content bg-primary-subtle">
	<h2>Overview</h2>
	<p class="content">It has been a long and eventful journey of more than a century across 17 countries.<br>
	 Starting in 2024 from a small building in Bengalore to its new hi-rise and hi-tech Indian Bank <br> 
	 Corporate Centre in Bengalore, is a saga of vision, enterprise, financial prudence and corporate governance.</p>
	</div>
	
	<div class="mission">
	<h2>Our Mission</h2>
	<p>To be a top ranking National Bank of International Standards<br>
	committed to augmenting stake holders’ value through concern,<br>
	care and competence.</p>
	</div>
	<div class="other">
	<h2>People Initiatives</h2>
	<p>Bank is endowed with a competent and motivated employee base which is engaged in handling the extensive business operations of the Bank across the globe. Strategic HR interventions like, according cross border and cross cultural work exposure to its managers, hiring diverse functional specialists to support line functionaries and complementing the technical competencies of its people by imparting conceptual, managerial and leadership skills, gave the Bank competitive advantage. People initiatives were blended with IR initiatives to create an effectively harmonious workplace, where everyone prospered.
Bank’s HR policies and strategic human resources development initiatives have made the Bank a breeding ground for business leaders. The Bank provided several leaders to the industry men who went on to build other great institutions.</p>
	
	<h2>New Technology Platform</h2>
	<p>Bank has made substantial progress in its end-to-end business and IT strategy project covering the Bank’s domestic, overseas and subsidiary operations. All Branches, extension counters in India, overseas business and five sponsored regional rural banks are on the core banking solution (CBS) platform.
Bank has been providing to its customers Internet Banking, viz., bob World Internet and other facilities such as online payment of direct and indirect taxes and certain State Government taxes, utility bills, rail tickets, online shopping, donation to temples and institutional fee payment. Bank has a wide network of ATMs across the country and has also launched mobile ATMs in select cities. Initiatives have been taken to provide corporate customers with facilities like direct salary upload, trade finance and State Tax payments etc. Bank has introduced Mobile Banking (Baroda M-connect) and prepaid gift cards.
Bank has implemented the Global Treasury Solution in its key territories like UK, UAE, Bahamas, Bahrain, Hong Kong, and Singapore. Bank has taken various technological initiatives in overseas operations such as implementation of Centralized SWIFT activity through Data Centre in Mumbai, Payment Messaging System with Anti Money Laundering check, Anti Money laundering Compliance and Online List Matching solution. While Bank implemented Transaction-based Internet Banking facility for its customers in Uganda, Botswana, UAE, New Zealand, Kenya, Mauritius and Seychelles, a view based e-banking facility was made available in Fiji, Oman, Tanzania and UK.</p>
	</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>