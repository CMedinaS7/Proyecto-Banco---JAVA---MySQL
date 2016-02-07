<%-- 
    Document   : cuenta_saldo
    Created on : 20-jun-2012, 16:09:05
    Author     : Carlos J Medina
--%>

<%@page import="java.util.GregorianCalendar"%>
<%
            HttpSession sesion = request.getSession(true);
            String Usuario = (String) sesion.getAttribute("cliente");
            String Cuenta=(String) sesion.getAttribute("cuenta");
            Date ua=new Date(sesion.getLastAccessedTime());
            cuenta c=cargar.ObtenerSaldo(Cuenta);
            String ultimo=String.valueOf(ua.getDay()+"/"+ua.getMonth()+"/"+ua.getYear());
            String hora=String.valueOf(ua.getHours()+":"+ua.getMinutes()+":"+ua.getSeconds());
	   Calendar ca = new GregorianCalendar(); 
	   
	   String dia, mes, annio;
	   
	   dia = Integer.toString(ca.get(Calendar.DATE));
	   mes = Integer.toString(ca.get(Calendar.MONTH))+1;
	   annio = Integer.toString(ca.get(Calendar.YEAR));
	   
            
                        
            if ((String) sesion.getAttribute("cliente") == null) {
                response.sendRedirect("ingresar_cuenta.jsp?e=1");
            }
%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.cargar" %>
<%@page import="Beans.cuenta" %>
<%@page import="java.util.Calendar,java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 8]> <html class="lt-ie8" lang="en"> <![endif]-->
<!--[if gte IE 8]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>ACM el banco de todos | Consultar Saldo de Cuenta</title>

	<!-- Foundation framework -->
		<link rel="stylesheet" href="foundation/stylesheets/foundation.css" />
	<!-- jquery UI -->
		<link rel="stylesheet" href="lib/jQueryUI/css/Aristo/Aristo.css" media="all" />
	<!-- jQplot (charts) -->
		<link rel="stylesheet" href="lib/jQplot/jquery.jqplot.css" media="all" />
	<!-- fancybox -->
		<link rel="stylesheet" href="lib/fancybox/jquery.fancybox-1.3.4.css" media="all" />
	<!-- colorpicker -->
		<link rel="stylesheet" href="lib/colorpicker/css/colorpicker.css" media="all"/>
	<!-- fullcalendar -->
		<link rel="stylesheet" href="lib/fullcalendar/fullcalendar.css" media="all" />
	<!-- plupload -->
		<link rel="stylesheet" href="lib/plupload/js/jquery.plupload.queue/css/jquery.plupload.queue.css" media="all" />
	<!-- datatables -->
		<link rel="stylesheet" href="lib/datatables/css/demo_table_jui.css" media="all" />
	<!-- file manager -->
		<link rel="stylesheet" href="lib/elfinder/css/elfinder.min.css" media="all" />
	<!-- chosen (select element extended) -->
		<link rel="stylesheet" href="lib/chosen/chosen.css" media="all" />
    <!-- ibuttons -->
		<link rel="stylesheet" href="lib/ibutton/css/jquery.ibutton.css" media="all" />
	<!-- tag handler -->
		<link rel="stylesheet" href="lib/tagHandler/css/jquery.taghandler.css" media="all" />
	<!-- tooltips -->
		<link rel="stylesheet" href="lib/qtip2/jquery.qtip.min.css" />
	<!-- syntax highlighter -->
		<link rel="stylesheet" href="lib/syntaxhighlighter/styles/shCoreDefault.css">
	
<!-- main styles -->
		<link rel="stylesheet" href="css/style.css" />

	<!-- Google fonts -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' />
		<link href='http://fonts.googleapis.com/css?family=Terminal+Dosis' rel='stylesheet' />

	<!-- Favicons and the like (avoid using transparent .png) -->
		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="apple-touch-icon-precomposed" href="icon.png" />

	<!--[if lt IE 8]>
		<link rel="stylesheet" href="foundation/stylesheets/ie.css" />
	<![endif]-->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<script src="lib/jQplot/excanvas.min.js"></script>
	<![endif]-->
</head>					<body class="ptrn_a grdnt_a mhover_a">

  <header>
		<div class="container head_s_a">
			<div class="row sepH_b">
				<div class="six columns">
					<div class="row">
                        <div class="five phone-two columns">
							<div id="logo">
								<img src="img/logo.png" alt="Pertho Admin" />
							</div>
						</div>
						
                  </div>
				</div>
				<div class="six columns">
					<div class="user_box cf">
						<div class="user_avatar">
						  <div class="four phone-two columns">
						    <div class="sparkItem sprk_a"></div>
					      </div>
					  </div>
						<div class="user_info user_sep">
							<p class="sepH_a">
								<strong><%=Usuario%></span></strong></p>
							<span>
								<a href="LogoutUsuario"><span lang="es-pe">Terminar 
							Sesion</span></a>
							</span>
						</div>
						<div class="ntf_bar user_sep">
							<a href="#ntf_mail_panel" class="ntf_item" style="background-image: url('img/ico/open/dollar.png')">
                            </a>
							<a href="#ntf_tickets_panel" class="ntf_item" style="background-image: url(img/ico/icSw2/32-Day-Calendar.png)">
							</a>
							<a href="#ntf_comments_panel" class="ntf_item" style="background-image: url(img/ico/icSw2/32-Speech-Bubble.png)">
								<span class="ntf_tip ntf_tip_blue"><span>2</span></span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="left: 0px; top: 0px">
				<div class="twelve columns">
					<nav id="smoothmenu_h" class="ddsmoothmenu tinyNav">
                        <ul class="cf">
                          <li>
                          <a href="" class="mb_parent">Usted puede realizar operaciones en linea todos los dias del año a cualquier hora y desde cualquier lugar desde una computadora o dispositivo con acceso a internet.</a></li>
</ul>
      </nav>
					<ul id="breadcrumbs" class="cf">
            <li>Usted esta en:</li>
						<li><a href="#">Via ACM</a></li>
						<li><a href="#">Banca por Internet</a></li>
						<li><span>Consultar mi Saldo</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- notifications content -->
		<div style="display:none">
			<div id="ntf_tickets_panel" style="display:none">
				<p class="sticky-title">Ultimo Acceso a la Cuenta</p>
				<ul class="sticky-list">
					<li>
						<a href="javascript:void(0)">Fecha: <%=dia+"/"+mes+"/"+annio%></a>
						<p><span class="s_color small">Hora:<%=hora%></span></p>
					</li>

				</ul>
				<a href="javascript:void(0)" class="gh_button btn-small">Mostrar Todos</a>
			</div>
			<div id="ntf_comments_panel" style="display:none">
				<p class="sticky-title">Lista de Mensajes</p>
				<ul class="sticky-list">
					<li>
						<a href="javascript:void(0)">Credito sin intereses</a>
						<p><span class="s_color small">Obtenga un prestamo de hasta 7 veces su sueldo sin intereses.</span></p>
					</li>
					<li>
						<a href="javascript:void(0)">Cuenta Saldo Premio</a>
						<p><span class="s_color small">Abra su cuenta ahora y llevate un auto sin sorteos.</span></p>
					</li>
				</ul>
				<a href="javascript:void(0)" class="gh_button btn-small">Mas Novedades</a>
			</div>
			<div id="ntf_mail_panel" style="display:none">
				<p class="sticky-title">Tipo de Cambio</p>
				<ul class="sticky-list">
					<li>
						<a href="javascript:void(0)">Valor del Dolar</a>
						<p><span class="s_color small">S/. 2.78</span></p>
					</li>
					<li>
						<a href="javascript:void(0)">Valor del Euro</a>
						<p><span class="s_color small">S/. 4.10</span></p>
					</li>
				</ul>
				<a href="javascript:void(0)" class="gh_button btn-small">Fecha Actual: <%=dia+"/"+mes+"/"+annio%></a>
			</div>
		</div>
	</header>
<div class="container">
	<div class="row">
		<div class="three columns hide-on-phones">
			<nav id="smoothmenu_v" class="ddsmoothmenu">
				<ul class="cf">
    <li>
        <a href="cuenta_saldo.jsp" class="mb_parent">Consultar Saldo</a>
    </li>
	<li>
        <a href="cuenta_movimientos.jsp" class="mb_parent">Mostrar Movimientos</a>
    </li>
    <li>
        <a href="pago_servicio.jsp" class="mb_parent">Pago de Servicios</a>
    </li>
    <li>
        <a href="realizar_transaccion.jsp" class="mb_parent">Realizar Transaccion</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Aprende a operar por internet</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Seguridad en Internet</a>
    </li>
    <li>
        <a href="cambiar_clave.jsp">Cambiar clave Internet</a>
    </li>
</ul>
			</nav>
		</div>
        
		<div class="nine columns">
				<div class="box_c">
					<div class="box_c_heading cf">
						<div class="box_c_ico"><img src="img/ico/icSw2/16-List.png" alt="" /></div>
						<p>Consultar Saldo de Cuenta</p>
					</div>
					<div class="box_c_content form_a">
							 <form action="#" class="validate nice custom">
								<div class="row sepH_b">
									<div class="four columns">
										<div class="form_legend">
											<h5>Saldo de Cuenta</h5>
											<p>Muestra el saldo de la cuenta hasta la presente fecha</p>
										</div>
									</div>
									<div class="eight columns">
										<div class="form_content">
											<div class="formRow elVal">
                                            	<label for="v_country">Cuenta:</label>
		                						<small><b>Ahorro <%=Cuenta%></b></small>	
                                                <br>
                                                <label for="v_country">Saldo:</label>
		                						<small><b>s/. <%=c.getMonto()%></b></small>	
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="four columns">
                                    <div class="form_legend">
											<h5>Ver Movimientos</h5>
											<p>Muestra detalladamente los movimientos realizados</p>
										</div>
                                        </div>
									<div class="eight columns">
										<div class="form_content">
											<div class="formRow">
                                                                                            <button type="button" class="button small nice blue radius" onclick="javascript:location.href='cuenta_movimientos.jsp';">Ver Movimientos</button>

											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>    
            
                <div class="row">
	  <div class="box_s">
  <p class="inner_heading">Banco de Todos ACM 2012. Todos los derechos reservados  © . Si tienes cualquier duda o consulta, comun<span lang="es-pe">íca</span>te con Banca por Tel<span lang="es-pe">é</span>fono V<span lang="es-pe">í</span>a ACM 044 451454 o al 948451245.</p>

	</div>
    
    
</div>
<script src="js/jquery.min.js"></script>
	<script src="lib/jQueryUI/jquery-ui-1.8.18.custom.min.js"></script>
	<script src="js/s_scripts.js"></script>
<script src="js/jquery.ui.extend.js"></script>
<script src="lib/qtip2/jquery.qtip.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="lib/jQplot/jquery.jqplot.min.js"></script>
<script src="lib/jQplot/jqplot.plugins.js"></script>
<script src="js/jquery.FeedEk.js"></script>
<script src="js/jquery.listnav-2.1.js"></script>
<script src="js/pertho.js"></script>
<script type="text/javascript"> var sprk_b = [10,8,5,7,4,4,1];</script>
<script type="text/javascript"> var sprk_c = [10,8,5,7,4,3,6,10,12,8,3];</script>
<script type="text/javascript"> var sprk_d = [10,8,5,7,4,3,6,12,16,6,7];</script>
                               
<script>
		$(document).ready(function() {
                //* common functions
				prth_common.init();
                
				//* nested accordion
				prth_nested_accordion.init();
				//clear form
				prth_clearForm.init();
							// small charts
				prth_sparkLines.init();
				// pie chart
				prth_charts.wg_plot1();
				// rss reader
				prth_rss.init();
				// letter navigation list
				prth_contacts_list.init();
						//replace themeforest iframe
			if(jQuery.browser.mobile) {
				if (top !== self) top.location.href = self.location.href;
			}
		});
	</script>

	<div class="style_switcher">
		<h5 class="w_color sepH_c">Style switcher</h5>
		<div class="cf sepH_c">
			<p class="left">Main color:</p><div id="mainColor_picker" class="color_picker right"><div></div></div>
		</div>
		<div class="cf sepH_c">
			<p class="left">Background color:</p><div id="background_picker" class="color_picker right"><div></div></div>
		</div>
		<div class="cf sepH_c">
			<p class="left">Link color:</p><div id="link_picker" class="color_picker right"><div></div></div>
		</div>
		<div class="cf sepH_c">
			<p>Menu hover color:</p>
			<div class="cf sepH_a">
				<span class="ssw_mhover_a style_item jQmhover style_active" title="mhover_a"></span>
				<span class="ssw_mhover_b style_item jQmhover" title="mhover_b"></span>
				<span class="ssw_mhover_c style_item jQmhover" title="mhover_c"></span>
				<span class="ssw_mhover_d style_item jQmhover" title="mhover_d"></span>
				<span class="ssw_mhover_e style_item jQmhover" title="mhover_e"></span>
			</div>
		</div>
		<div class="cf sepH_c">
			<p>Background pattern</p>
			<div class="cf sepH_a">
				<span class="ssw_ptrn_a style_item jQptrn style_active" title="ptrn_a"></span>
				<span class="ssw_ptrn_b style_item jQptrn" title="ptrn_b"></span>
				<span class="ssw_ptrn_c style_item jQptrn" title="ptrn_c"></span>
				<span class="ssw_ptrn_d style_item jQptrn" title="ptrn_d"></span>
				<span class="ssw_ptrn_e style_item jQptrn" title="ptrn_e"></span>
			</div>
			<a href="#" id="remove_pattern" class="small">Remove pattern</a>
		</div>
		<div class="cf sepH_c">
			<p>Bar Gradients</p>
			<div class="cf sepH_a">
				<span class="ssw_grdnt_a style_item jQgrdnt style_active" title="grdnt_a"></span>
				<span class="ssw_grdnt_b style_item jQgrdnt" title="grdnt_b"></span>
				<span class="ssw_grdnt_c style_item jQgrdnt" title="grdnt_c"></span>
				<span class="ssw_grdnt_d style_item jQgrdnt" title="grdnt_d"></span>
				<span class="ssw_grdnt_e style_item jQgrdnt" title="grdnt_e"></span>
			</div>
		</div>
		<div class="gh_button-group">
			<a href="#" id="showCss" class="gh_button pill small">Show CSS</a>
            <a href="#" id="resetDefault" class="gh_button pill small danger">Reset</a>
		</div>
        <div style="display:none">
            <ul id="ssw_styles">
                <li class="small ssw_mbColor sepH_a" style="display:none">body {<span class="ssw_mColor sepH_a" style="display:none"> color: #<span></span>;</span> <span class="ssw_bColor" style="display:none">background-color: #<span></span> </span>}</li>
                <li class="small ssw_lColor sepH_a" style="display:none">a { color: #<span></span> }</li>
            </ul>
        </div>
	</div>
	<div class="sw_width" style="display:none">
		<img src="img/blank.gif" alt="" title="switch to full width" class="sw_full"/>
		<img src="img/blank.gif" alt="" title="switch fixed width (980px)" class="sw_fixed" style="display:none"/>
	</div>
					</body>

</html>
