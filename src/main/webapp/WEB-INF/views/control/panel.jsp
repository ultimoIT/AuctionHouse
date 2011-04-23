<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../resources/styles.css" type="text/css" />
<title>Control Panel</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<div id="control-panel">
<div id="redBox"></div><p id="redLegend">Outbid</p>
<div class="clear"></div>
<br />
<div id="greenBox"></div><p id="greenLegend">Highest Bid</p>
<div class="clear"></div>
<h3 id ="CurrentBids">My Current Bids</h3>
<table border="1">
		<tr>
			<th width="10%">Image</th>
			<th width="25%">Title</th>
			<th width="20%">Category</th>
			<th width="10%">Seller</th>
			<th width="15%">Current Bid</th>
		</tr>
		<c:forEach items="${bids}" var="bid">
			<tr>
				<c:choose>
				<c:when test="${not empty bid.picture[0]}">
					<td class="bidImage"><img src="<c:url value="/image?id=${bid.idAuction}" />" /></td>
				</c:when>
				<c:otherwise>
					<td class="bidImage"><img src="/AuctionHouse/resources/images/noimage.png" /></td>
				</c:otherwise>
				</c:choose>
				<td class="bidTitle"><a href="<c:url value="/auction/${bid.idAuction}" />" >${bid.title}</a></td>
				<td class="bidCategory">${bid.category.name}</td>
				<td class="bidSeller">${bid.user.username}</td>
				<c:choose>
				<c:when test="${currentUser == bid.bids[0].user.username}">
					<td class="bidHighestMe">$${bid.bids[0].amount}</td>
				</c:when>
				<c:otherwise>
					<td class="bidHighestElse">$${bid.bids[0].amount}</td>
				</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
	</table>
<hr />
<h3 id="PastBids">Past Bids</h3>
<table border="1">
	<tr>
		<th width="10%">Image</th>
		<th width="30%">Title</th>
		<th width="30%">Category</th>
		<th width="20%">High Bid</th>
		<th width="10%">Status</th>
	</tr>
	<c:forEach items="${wins}" var="win">
		<tr>
			<c:choose>
			<c:when test="${not empty win.picture[0]}">
				<td class="saleImage"><img src="<c:url value="/image?id=${win.idAuction}" />" /></td>
			</c:when>
			<c:otherwise>
				<td class="saleImage"><img src="/AuctionHouse/resources/images/noimage.png" /></td>
			</c:otherwise>
			</c:choose>
			<td class="wonTitle"><a href="<c:url value="/auction/${win.idAuction}" />" >${win.title}</a></td>
			<td class="wonCategory">${win.category.name}</td>
			<td class="wonBid">${win.bids[0].amount}</td>
			<c:choose>
				<c:when test="${currentUser == win.bids[0].user.username and auction.sold}"><td class="wonStatus">Won</td></c:when>
				<c:when test="${auction.finished and not auction.sold}"><td class="wonStatus">Canceled</td></c:when>
				<c:otherwise><td class="wonStatus">Lost</td></c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
</table>
<hr />
<h3 id="CurrentSales">My Current Sales</h3>
<table border="1">
	<tr>
		<th width="10%">Image</th>
		<th width="30%">Title</th>
		<th width="30%">Category</th>
		<th width="30%">Current Bid</th>
	</tr>
	<c:forEach items="${auctions}" var="auction">
		<tr>
			<c:choose>
			<c:when test="${not empty auction.picture[0]}">
				<td class="saleImage"><img src="<c:url value="/image?id=${auction.idAuction}" />" /></td>
			</c:when>
			<c:otherwise>
				<td class="saleImage"><img src="/AuctionHouse/resources/images/noimage.png" /></td>
			</c:otherwise>
			</c:choose>
			<td class="saleTitle"><a href="<c:url value="/auction/${auction.idAuction}" />" >${auction.title}</a></td>
			<td class="saleCategory">${auction.category.name}</td>
			<c:choose>
				<c:when test="${auction.bids[0].amount == null}">
					<td class="saleBid">No Bids Yet</td>
				</c:when>
				<c:otherwise>
					<td class="saleBid">$${auction.bids[0].amount}</td>
				</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
</table>
<hr />
<h3 id="PastSales">Past Sales</h3>
<table border="1">
	<tr>
		<th width="10%">Image</th>
		<th width="30%">Title</th>
		<th width="30%">Category</th>
		<th width="30%">Selling Price</th>
	</tr>
	<c:forEach items="${sales}" var="sale">
		<tr>
			<c:choose>
			<c:when test="${not empty sale.picture[0]}">
				<td class="saleImage"><img src="<c:url value="/image?id=${sale.idAuction}" />" /></td>
			</c:when>
			<c:otherwise>
				<td class="saleImage"><img src="/AuctionHouse/resources/images/noimage.png" /></td>
			</c:otherwise>
			</c:choose>
			<td class="pastTitle"><a href="<c:url value="/auction/${sale.idAuction}" />" >${sale.title}</a></td>
			<td class="pastCategory">${sale.category.name}</td>
			<td class="pastHighestBid">$${sale.bids[0].amount}</td>
		</tr>
	</c:forEach>
</table>
<hr />
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>