<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
					<div class="row" style="width: 100%;">
						<div class="col-lg-12">
							<div class="main-card mb-12 card">
								<div class="card-body">
									<h5 class="card-title">Bất động sản đẩy tin</h5>
									<div class="scroll-area-md" style="height: 450px;">
										<div class="card-body">
											<ul class="list-group">
												<c:forEach var="bds" items="${BDSChoDayTin}">
													<c:choose>
														<c:when test="${bds.actived == 1}">
															<li class="list-group-item-action list-group-item">
																<div class="single-profile-front row">
																	<div class="profile-img col-lg-2">
																		<img  src="${mapUrl.get(bds.id)}" alt="" style="border-radius: 10px 10px 10px 10px;width: 150px; height: 100px;">
																		</div>
																	<div class="col-lg-8">
																	<a href="/admin/chi-tiet-bat-dong-san-admin?id=${bds.id}">
																		<div class="profile-caption"
																			style="margin-left: 5px; margin-right: 5px; text-align: left;">
																			<h6 style="color: black;">${bds.title}</h6>
																			<h6 style="color: blue;">${bds.money}-
																				${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																		</div>
																		</a>
																	</div>
																	<div class="profile-img col-lg-2"
																		style="text-align: right; font-size: 30px;">
																		<i class="btn-DBDS-daytin metismenu-icon pe-7s-rocket font-icon-wrapper btn-outline-danger btn-icon-only btn-icon"
																			style="color: green;" id-baidang ="${bds.id}" data-toggle="tooltip" title="Đẩy tin" ></i>
																	</div>
																</div>
															</li>
														</c:when>
														<c:otherwise>
															<li class="list-group-item-action list-group-item">
																<div class="single-profile-front row">
																	<div class="profile-img col-lg-2">
																		<img  src="${mapUrl.get(bds.id)}" alt="" style="border-radius: 10px 10px 10px 10px;width: 150px; height: 100px;">
																		</div>
																	<div class="col-lg-10">
																	<a href="/admin/chi-tiet-bat-dong-san-admin?id=${bds.id}">
																		<div class="profile-caption"
																			style="margin-left: 5px; margin-right: 5px; text-align: left;">
																			<h6 style="color: black;">${bds.title}</h6>
																			<h6 style="color: blue;">${bds.money}-
																				${bds.dien_tich} - ${bds.dia_chi_chi_tiet}</h6>
																		</div>
																		</a>
																	</div>
																</div>
															</li>
														</c:otherwise>
													</c:choose>

												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

<script src="/js/admin/daybatdongsan.js"></script>

