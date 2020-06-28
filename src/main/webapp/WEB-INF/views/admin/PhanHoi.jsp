<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<div class="row" style="width: 100%;">
	<div class="col-lg-12" >
	    <div class="main-card mb-12 card">
	        <div class="card-body">
	            <div class="scroll-area-md" style="height: 550px;">
	               	<div class="card-body">
						<ul class="list-group">
						<c:forEach var = "i" begin = "1" end = "10">
							<li class="list-group-item-action list-group-item" >
								<div class="single-profile-front row" >
									<div class="profile-img col-lg-2" >
										<div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" height="40" class="rounded-circle" src="/img/web/user.png" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">TrangHoang</div>
                                                                <div class="widget-subheading opacity-7"> 23-6-2020 12:03</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                    </div>
									<div class="col-lg-10">
										<div class="profile-caption" style="margin-left: 5px;margin-right: 5px; text-align: left;">
											 <h4>Admin ơi đẩy tin giúp mình với!!  </h4>
											 <div style="text-align: justify;">SDT: 0352902224 - DC: ktx khu A, Linh Trung, Thu Duc, Tp.HCM</div>
										</div>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
	            </div>
	        </div>
	     </div>
	</div>
</div>

