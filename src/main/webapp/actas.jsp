<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String [][] data = (String[][]) session.getAttribute("data");
	String id = 	   (String) session.getAttribute("id");			
%>

<!DOCTYPE html>
<head>
<title>ONPE - Oficina Nacional de Procesos Electorales</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta name="keywords" content="onpe, " />
<meta name="description" content="" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<body>
	<header>
		<div class="container">
			<div class="pull-left logo-onpe">
				<div class="pull-left">
					<a href="index.html"> <img src="images/onpe-trans.png"></a>
				</div>
				<div class="pull-left">
					<h1>PRESENTACIÓN DE RESULTADOS</h1>
				</div>
			</div>
			<div class="pull-right logo">
				<img src="images/eegg2016-trans.png" width="218" height="35">
			</div>
		</div>
	</header>
	<div class="container">

		<img src="images/actas_portada.jpg" width="1170" height="248"
			class="img-responsive mg30top">

		<section class="menu navbar-default menu05">
			<a name="posicion"></a>
			<nav class="navbar-collapse bs-navbar-collapse collapse"
				aria-expanded="false">
				<ul class="nav navbar-nav">
					<li class="bt-azul"><a href="presidenciales.html">PRESIDENCIAL</a>
					</li>
					<li class="bt-amarillo act-amarillo"><a href="svlActas">ACTAS</a>
					</li>
					<li class="bt-rojo"><a href="svlParticipacion">PARTICIPACIÓN
							CIUDADANA</a></li>
				</ul>
			</nav>
		</section>

		<section class="contenedor">
			<div class="row">
				
				<%if (id == null){ %>
				<div class="col-xs-12 col-md-3">
					<div class="menu-interna">
						<ul>
							<li><a href="svlActas" class="act-izq">Actas por ubigeo</a></li>
							<li><a href="svlActas">Actas por número</a></li>
						</ul>
					</div>
				</div>
				<%} %>
				<div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3>
									<span class="glyphicon glyphicon-circle-arrow-right"
										aria-hidden="true" style="font-size: 19px"></span>SEGUNDA
									ELECCIÓN PRESIDENCIAL 2016: ACTAS POR UBIGEO
								</h3>
							</div>
						</div>
						<div class="col-lg-7 centered">
							<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
								<div class="col-xs-3 col-md-1">
									<span class="glyphicon glyphicon-ok-circle ico-info"
										aria-hidden="true"></span>
								</div>

								<div class="col-xs-9 col-md-11">
									<ul>
										<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h</li>
									</ul>
								</div>
							</div>
						</div>


						<div id="page-wrap">
							<br>
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<form id="myform" name="myform" class="horizontal-form" action="svlActas"
								method="post">
								<div class="col-md-3">INGRESE EL NÚMERO DE ACTA:</div>


								<div class="col-md-4">
									<div class="form-group">
										<span id="spanNroMesa"> <input id="nroMesa"
											name="nroMesa" type="text" maxlength="6" class="form-control"
											value="" />
										</span>
									</div>
								</div>


								<div class="col-md-2">
									<button  type="submit" class="btn btn-primary" >
										<span class="glyphicon glyphicon-search" aria-hidden="true"></span>BUSCAR
									</button>
								</div>

							</form>
						</div>






						<% if (id != null && data != null ){%>	
						<% for (String[] aData:data){%>
						<div id="divDetalle" class="ptop20">
						<div class="contenido-resultados">
							<p>&nbsp;</p>
							<div class="row">
								<div class="tab-info">
									<div class="tab-content">
										<div id="detMesa">
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane active"
													id="presidencial">
													<div class="tab-info-desc">
														<div class="row">
															<div class="col-xs-3 col-md-4">
																<div class="mesap01">
																	<img src="images/mp-sin.jpg" class="img-responsive">
																	Si requiere la imagen del acta, solicítela a través del
																	procedimiento de acceso a la información pública.
																</div>
															</div>
															<div class="col-xs-9 col-md-8">
																<div class="row">
																	
																	
																	<div class="col-xs-12">
																		<p class="subtitle1">ACTA ELECTORAL</p>
																		<div id="page-wrap">
																			<table class="table13" cellspacing="0">
																				<thead>
																					<tr>
																						<th>Mesa N°</th>
																						<th>N° Copia</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td><%= aData[6] %> </td>
																						<td><%= aData[7] %></td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>

																				

																	<div class="col-xs-12">
																		<p class="subtitle1">INFORMACIÓN UBIGEO</p>
																		<div id="page-wrap">
																			<table class="table14" cellspacing="0">
																				<tbody>
																					<tr class="titulo_tabla">
																						<td>Departamento</td>
																						<td>Provincia</td>
																						<td>Distrito</td>
																						<td>Local de votación</td>
																						<td>Dirección</td>
																					</tr>
																					 
																					<tr>
																						<td><%= aData[0] %></td>
																						<td><%= aData[1] %></td>
																						<td><%= aData[2] %></td>
																						<td><%= aData[3] %></td>
																						<td><%= aData[4] %></td>
																					</tr>
																					
																				</tbody>
																			</table>
																		</div>
																	</div>
																	
																	
																	<div class="col-xs-12">
																		<p class="subtitle1">INFORMACIÓN MESA</p>
																		<div id="page-wrap">
																			<table class="table15" cellspacing="0">
																				<tbody>
																					<tr class="titulo_tabla">
																						<td>Electores hábiles</td>
																						<td>Total votantes</td>
																						<td>Estado del acta</td>
																					</tr>
																					<tr>
																						<td><%= aData[9] %></td>
																						<td><%= aData[10] %></td>
																						<td><%= aData[8] %></td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>
																	
																		
																</div>

															</div>
														</div>

														<div>
															<div class="col-xs-12 pbot30_acta">
																<p class="subtitle1">LISTA DE RESOLUCIONES</p>
																<span class="glyphicon glyphicon-info-sign"
																	aria-hidden="true"></span> No hay resoluciones para el
																acta seleccionada
																<div id="page-wrap">
																	<div class="col-md-12 resolu"></div>
																</div>
																<!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
															</div>

														</div>

														<div>
															<div class="col-xs-12">
																<p class="subtitle1">INFORMACIÓN DEL ACTA ELECTORAL</p>
																<div id="page-wrap" class="cont-tabla1">
																	<table class="table06">
																		<tbody>
																			<tr class="titulo_tabla">
																				<td colspan="2">Organización política</td>
																				<td>Total de Votos</td>
																			</tr>
																			<tr>
																				<td>PERUANOS POR EL KAMBIO</td>
																				<td><img width="40px" height="40px"
																					src="images/simbolo_pkk.jpg"></td>
																				<td><%= aData[11] %></td>
																			</tr>
																			<tr>
																				<td>FUERZA POPULAR</td>
																				<td><img width="40px" height="40px"
																					src="images/simbolo_keyko.jpg"></td>
																				<td><%= aData[12] %></td>
																			</tr>
																			<tr>
																				<td colspan="2">VOTOS EN BLANCO</td>
																				<td><%= aData[13] %></td>
																			</tr>
																			<tr>
																				<td colspan="2">VOTOS NULOS</td>
																				<td><%= aData[14] %></td>
																			</tr>
																			<tr>
																				<td colspan="2">VOTOS IMPUGNADOS</td>
																				<td><%= aData[15] %></td>
																			</tr>
																			<tr>
																				<td colspan="2">TOTAL DE VOTOS EMITIDOS</td>
																				<td>241</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>




										</div>
									</div>
								</div>
							</div>

						</div>
						</div>
						<%}%>
						<%}%>
						
						
						
						
						
				
						
						
						
						
						
						
						

					</div>
				</div>
			</div>
		</section>
	</div>
	<footer class="footer-inside">
		<div class="container ">
			<div class="row">
				<div class="col-md-12 direc01">
					<span>CONTÁCTENOS</span>
					<p>Jr. Washington 1894, Cercado de Lima</p>
					<p>
						Correo electrónico: <a href="#">informes@onpe.gob.pe</a>
					</p>
					<p>Central Telefónica: 417 - 0630 / Lunes a Viernes 08:30 -
						16:30 hrs</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>