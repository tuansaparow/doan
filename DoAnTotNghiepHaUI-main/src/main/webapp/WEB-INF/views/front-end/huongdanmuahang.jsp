<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<title>Huong dan mua hang</title>
	<meta charset="utf-8">
	<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>
	
</head>
<body>
<div class="wapper">
	<div class="go-to-top btn btn-secondary" id="go-to-top" >
		<i class="fas fa-angle-up"></i>
	</div>
		<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>
		<div class="bg">
			<div class="content">
				
				
				<!-- end banner -->
				<div class="ctgr-content">
					<div class="ctgr-content-left col-xl-3.5">
						<div class="category">
							<div class="category-top">DANH MỤC SẢN PHẨM</div>
							<ul class="drop-menu">
								<c:forEach var = "category" items = "${categories }">
									<li ><a  href="${pageContext.request.contextPath}/category/${category.seo}">${category.name }</a></li>
								</c:forEach>
							</ul>
						</div>
						<div style="margin-top: 2rem;">
							<div class="category-top">SẢN PHẨM NỔI BẬT</div>
							<div style="border: 1px solid #d4d2d2; border-radius: 5px; background: #ffffff;">
								<c:forEach var = "spbc" items = "${spbc}">
									<div style="padding-top: 1rem; margin-left: 1rem;outline: 0px; border-bottom: 1px solid rgb(229, 229, 229); display: table; margin-bottom: 20px; padding-bottom: 20px; width: 236px; color: rgb(51, 51, 51); font-family: helvatica, &quot;Open Sans&quot;, sans-serif; font-size: 14px;">
										<div style="outline: 0px; overflow: hidden; position: relative; display: table-cell; width: 90px;">
											<a href="${pageContext.request.contextPath}/products/${spbc.product.seo }" class="product-thumb-link" style="outline: 0px; color: rgb(242, 121, 34); display: block; overflow: hidden; position: relative; width: 90px;">
												<img src="${pageContext.request.contextPath}/images/${spbc.product.productImages.get(0).path }" alt="" class="H100" style="border: 1px solid black;outline: 0px; max-width: 160px; height: 108px; width: 90px; max-height: 192px;">
											</a>
										</div>
										<div style="outline: 0px; display: table-cell; padding-left: 20px; vertical-align: top;">
											<h3 style="outline: 0px; line-height: 18px; margin-right: auto; margin-left: auto; font-size: 14px; text-transform: capitalize; overflow: hidden; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; text-overflow: ellipsis; max-width: 210px; height: 3rem;">
												<a href="${pageContext.request.contextPath}/products/${spbc.product.seo }" title="${spbc.product.title }" class="menuproleftcs" style="outline: 0px; color: rgb(51, 51, 51); text-transform: none; display: block; overflow: hidden; text-overflow: ellipsis; transition-timing-function: ease-out; padding-right: 5px; padding-left: 5px;">${spbc.product.title}</a>
											</h3>
											<c:choose>
												<c:when test="${spbc.discount == 0 }">
													<div style="outline: 0px; margin-right: -5px; margin-left: -5px;">
														<span style="outline: 0px; font-size: 15px; margin-right: 5px; margin-left: 5px; font-weight: 700; color: rgb(242, 121, 34); display: block;">
															<fmt:formatNumber type="number" maxIntegerDigits="13"
															value="${spbc.price_sale }" /> đ
														</span>
													</div>
												</c:when>
												<c:otherwise>
													<div style="outline: 0px; margin-right: -5px; margin-left: -5px;">
														<span style="outline: 0px; font-size: 13px; margin-right: 5px; margin-left: 5px; color: rgb(204, 204, 204); display: block; text-decoration-line: line-through;">
															<fmt:formatNumber type="number" maxIntegerDigits="13"
															value="${spbc.product.price }" /> đ
														</span>
														<span style="outline: 0px; font-size: 15px; margin-right: 5px; margin-left: 5px; font-weight: 700; color: rgb(242, 121, 34); display: block;">
															<fmt:formatNumber type="number" maxIntegerDigits="13"
															value="${spbc.price_sale }" /> đ
														</span>
													</div>
												</c:otherwise>
											</c:choose>
											
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="ctgr-content-right col-xl-9">
						<div class="ctgr-product">
							<div class="ctgr-product-top">
								<a href="${pageContext.request.contextPath}/huongdanmuahang"><i class="fas fa-th"></i>Hướng dẫn mua hàng
								</a>
								
							</div><div class="line-bottom"></div>
							<div class="ctgr-product-main">
								<div class="body-main-product">
									<div class="product1" style="margin: 20px;">
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px;">Đặt
											hàng đơn giản và nhanh chóng tại Website chỉ với vài click
											chuột như sau:</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px;">
											<br style="outline: 0px;">
											<span style="outline: 0px; color: rgb(0, 0, 255);">
												<span style="outline: 0px;">
													<span style="outline: 0px; font-weight: 700;">
														<u style="outline: 0px;">Bước 1</u>: Click chuột vào nút "Đặt Hàng Ngay"
													</span>
												</span>
											</span>
											<br style="outline: 0px;">
											<br style="outline: 0px;">Sau khi Click vào nút "Đặt Hàng
											Ngay" bạn sẽ được chuyển đến 1 trang điền thông tin nhận hàng.<br
												style="outline: 0px;">&nbsp;
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px; text-align: center;">
											<img alt="Hướng dẫn mua hàng trên Imua"
												src="${pageContext.request.contextPath}/images/dathang.jpg"
												title="Hướng dẫn mua hàng trên Imua"
												style="outline: 0px; max-width: 100%; width: 700px; height: 420px;">
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px;">
											<br style="outline: 0px;">
											<span style="outline: 0px; color: rgb(0, 0, 255);"><span
												style="outline: 0px;"><span
													style="outline: 0px; font-weight: 700;">
													<u style="outline: 0px;">Bước 2</u>: Điền đầy đủ và chính xác
														thông tin</span></span></span><br style="outline: 0px;">
											<br style="outline: 0px;">Ở bước này bạn cần lưu ý&nbsp;<span
												style="outline: 0px; font-weight: 700;">điền đầy đủ
												thông tin và phải thật chính xác</span>&nbsp;đặt biệt là số điện
											thoại và địa chỉ nhận hàng của bạn, vì khi bạn nhập sai 2
											thông tin này thì đơn hàng của bạn sẽ bị thất lạt không thể
											giao về tới tận nhà của bạn.
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px; text-align: center;">
											<br style="outline: 0px;">
											<img alt="Hướng dẫn mua hàng trên Imua"
												src="${pageContext.request.contextPath}/images/dathang2.jpg"
												title="Hướng dẫn mua hàng trên Imua"
												style="outline: 0px; max-width: 100%; width: 700px; height: 450px;">
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px;">
											<br style="outline: 0px;">
											<span
												style="outline: 0px; font-weight: 700; color: rgb(0, 0, 255);">
												<u style="outline: 0px;">Bước 3</u>: Chờ nhận hàng</span>
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px; text-align: justify;">Sau
											khi hoàn tất đơn hàng chúng tôi sẽ tiến hành đóng gói và
											chuyển qua cho đơn vị vận chuyển để giao gói hàng về tới tận
											nhà cho bạn, bạn hãy chú ý điện thoại vì rất có thể bưu tá
											giao hàng sẽ liên hệ trước để xác nhận bạn có ở nhà không để
											đến giao hàng cho bạn nhé.
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px; text-align: center;">
											<img alt=""
												src="${pageContext.request.contextPath}/images/giao-hang-3-min.png"
												style="outline: 0px; max-width: 100%; width: 700px; height: 285px;">
										</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px;">&nbsp;</p>
										<p
											style="outline: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: helvatica,&amp; quot; Open Sans&amp;quot; , sans-serif; font-size: 18px; text-align: center;">
											<span style="outline: 0px; color: rgb(255, 0, 0);">
												<span
													style="outline: 0px; font-weight: 700;">&nbsp;&nbsp;
													<img
														alt=""
														src="https://imua.com.vn/FileUploads/imgfile/ChiTay_%20nho%20(2)(5).png"
														style="outline: 0px; max-width: 100%;">&nbsp;Cám ơn
														bạn đã tin tưởng và mua sắm tại Website, chúng tôi cảm thấy
														rất vinh hạnh khi được phục vụ bạn và hi vọng bạn sẽ quay
														lại mua sắm lần sau.&nbsp;&nbsp;
												</span>
											</span>
										</p>
									</div>
								<div class="phan-trang container col-xl-2">
						</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div> 
				<!-- end content -->
			<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>	
</body>
</html>



