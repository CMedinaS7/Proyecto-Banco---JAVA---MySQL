<%-- 
    Document   : generar_clave
    Created on : 18-jun-2012, 21:03:31
    Author     : Carlos J Medina
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%String e=request.getParameter("e");
 %>
<!DOCTYPE html>
<!--[if lt IE 8]> <html class="lt-ie8" lang="en"> <![endif]-->
<!--[if gte IE 8]><!--> <html lang="en"> <!--<![endif]-->

    
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>ACM el banco de todos | Generar Clave Web</title>

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
        
            <!-- jpad styles -->
    	<link rel="stylesheet" href="jpad/jquery.keypad.css" />

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
    
     <script language="JavaScript">
    function redi()
    {
		document.images["a"].src = "cap3.jsp";
    }
    </script>
    
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
				<div class="six columns"></div>
			</div>
			<div class="row">
				<div class="twelve columns">
					<nav id="smoothmenu_h" class="ddsmoothmenu tinyNav">
                        <ul class="cf">
                          <li>
                          <a href="javascript:void(0)" class="mb_parent">Usted puede realizar operaciones en linea todos los dias del año a cualquier hora y desde culquier lugar desde una computadora o dispositivo con acceso a internet.</a></li>
</ul>
      </nav>
					<ul id="breadcrumbs" class="cf">
            <li>Usted esta en:</li>
						<li><a href="javascript:void(0)">Via ACM</a></li>
						<li><a href="javascript:void(0)">Banca por Internet</a></li>
						<li><span>Generar Clave Internet</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- notifications content -->
		
	</header>
<div class="container">
<div class="row">
  <div class="three columns hide-on-phones">
			<nav id="smoothmenu_v" class="ddsmoothmenu">
				<ul class="cf">
    <li><a href="ingresar_cuenta.jsp" class="mb_parent pageselected">Ingresar a mi cuenta</a></li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Clave Internet (6 dígitos)</a>
        <ul style="display:none">
            <li><a href="javascript:void(0)">Que es la clave Internet</a></li>
            <li><a href="generar_clave.jsp">Genera tu clave Internet</a></li>
            <li><a href="javascript:void(0)">Olvidaste tu clave Internet?</a></li>
        </ul>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">¿Que operaciones puedo hacer por internet?</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Tarifas de Internet</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Aprende a operar por internet</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Seguridad en Internet</a>
    </li>
    <li>
        <a href="generar_clave.jsp" class="mb_parent">Generar Clave en Internet</a>
    </li>
    <li>
        <a href="javascript:void(0)" class="mb_parent">Terminos y Condiciones de Privacidad</a>
    </li>
</ul>
			</nav>
	</div>
  <div class="nine columns">
    <div class="box_c">
      <div class="box_c_heading cf">
        <div class="box_c_ico"><img src="img/ico/icSw2/16-List.png" alt="" /></div>
        <p>Generar clave internet (6 digitos)</p>
      </div>
      <div class="box_c_content">
          <form id="validate_wizard" class="stepy-wizzard nice" action="GenerarClave">
          <fieldset title="Datos de Tarjeta">
            <legend>Ingrese los datos de su tarjeta.</legend>
            <div class="row">
              <div class="twelve columns">
                <div class="formRow elVal">
                  <label for="tipo_tarjeta">Seleccione Tipo de Tarjeta:</label>
                  <select data-placeholder="Seleccionar..." class="chzn-select" style="width:300px" name="tipo_tarjeta" id="tipo_tarjeta">
                    <option value=""></option>
                    <option value="1">Credito VISA</option>
                    <option value="2">MasterCard</option>
                    <option value="3">Credimas</option>
                    <option value="4">American Express</option>
                    <option value="5">Credimas Negocios</option>
                  </select>
                </div>
                <div class="formRow elVal">
                  <label for="num_tarjeta">Ingrese Numero de Tarjeta</label>
                  <input type="text" id="num_tarjeta" name="num_tarjeta" maxlength="16" class="input-text medium" />
                </div>
                <div class="formRow elVal">
                  <label for="clave_tarjeta1">Clave Tarjeta (4 digitos)</label>
                  <input type="password" id="clave_tarjeta1" name="clave_tarjeta1" maxlength="4" class="input-text medium" />
                </div>
              </div>
            </div>
          </fieldset>
          <fieldset title="Generar Clave 6 digitos (Internet)">
            <legend>Ingrese su clave internet</legend>
            <div class="row">
              <div class="twelve columns">
                <div class="formRow elVal">
                  <label for="clave_tarjeta2">Clave Tarjeta (6 digitos)</label>
                  <input type="password" id="clave_tarjeta2" name="clave_tarjeta2" maxlength="6" class="input-text medium" />
                </div>
                <div class="formRow elVal">
                  <label for="clave_tarjeta31">Vuelva a digitar su clave Internet</label>
                  <input type="password" id="clave_tarjeta31" name="clave_tarjeta31" maxlength="6" class="input-text medium" />
                </div>
                <div class="formRow elVal">
                  <label for="clave_caduca">Seleccione Opcion:</label>
                  <select data-placeholder="Seleccionar..." class="chzn-select" style="width:300px" name="clave_caduca" id="clave_caduca">
                    <option value=""></option>
                    <option value="Caducar cada 30 dias">Caducar cada 30 dias</option>
                    <option value="Caducar cada 72 dias">Caducar cada 72 dias</option>
                    <option value="Caducar cada 7 dias">Caducar cada 7 dias</option>
                    <option value="Caducar cada 5 dias">Caducar cada 5 dias</option>
                    <option value="No Caducar">No caducar</option>
                  </select>
                </div>
              </div>
            </div>
          </fieldset>
          <fieldset title="Confirmacion">
            <legend>Confirmar operacion</legend>
            <div class="row">
              <div class="twelve columns">
                <div class="formRow elVal">
                  <label for="codcaptcha">Ingrese el codigo de la imagen</label>
                  <br>
                  <span class="formRow"><img src="cap3.jsp" name="a" id="a" /> <a href="javascript:redi()"><img src="img/nvocodigo.png" width="99" height="11" border="0"></a></span>
                  <input type="text" maxlength="6" id="codcaptcha" name="codcaptcha" class="input-text medium" />
                </div>
                <div class="formRow">
                  <p>Acepta las condiciones de este sitio</p>
                  <div class="sepH_b">
                    <input type="checkbox" class="iRadio_btn {labelOn: 'SI', labelOff: 'No'}" checked />
                  </div>
                </div>
              </div>
            </div>
          </fieldset>
          <button type="submit" class="finish gh_button icon approve primary">Generar Clave</button>
        </form>
      </div>
    </div>
  </div>
</div>    
            
                <div class="row">
	  <div class="box_s">
  <p class="inner_heading">Banco de Todos ACM 2012. Todos los derechos reservados  © . Si tienes cualquier duda o consulta, comunícate con Banca por Teléfono Vía ACM 044 451454 o al 948451245.</p>

	</div>
    
    
</div>

	<script src="js/jquery.min.js"></script>
	<script src="lib/jQueryUI/jquery-ui-1.8.18.custom.min.js"></script>
	<script src="js/s_scripts.js"></script>
	<script src="js/jquery.ui.extend.js"></script>
	<script src="lib/qtip2/jquery.qtip.min.js"></script>
	<script src="lib/tiny_mce/jquery.tinymce.js"></script>
	<script src="lib/chosen/chosen.jquery.min.js"></script>
	<script src="lib/timepicker/jquery-ui-timepicker-addon.js"></script>
	<script src="lib/ibutton/jquery.ibutton.min.js"></script>
	<script src="js/ui.spinner.js"></script>
	<script src="lib/raty/jquery.raty.min.js"></script>
	<script src="lib/raty/jquery.raty.min.js"></script>
	<script src="js/jquery.inputmask.js"></script>
	<script src="js/jquery.inputmask.extentions.js"></script>
	<script src="lib/tagHandler/js/jquery.taghandler.min.js"></script>
	<script src="js/pertho.js"></script>
	<script src="lib/stepy/js/jquery.stepy.min.js"></script>
	<script src="lib/validate/jquery.validate.min.js"></script>
	<script src="lib/chosen/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="jpad/jquery.keypad.js"></script>
	<script src="js/pertho.js"></script>
	<script>
		$(document).ready(function() {
			
			
			  //* common functions
				prth_common.init();
                
				//* nested accordion
				prth_nested_accordion.init();
				//clear form
				prth_clearForm.init();
				
				//* vertical navigation
				if(!jQuery.browser.mobile) {
					//* main navigatin
					prth_main_nav.v_nav();
				}

				//* step by step wizard
				prth_wizard.simple();
				prth_wizard.validation();
				prth_wizard.steps_nb();
				
				//* extended select elements
				prth_chosen_select.init();
				
				//* iOS style checkboxes
				prth_ios_checkboxes.init();
				
                                <%if(e!=null){%>
				prth_dialogs.init();
				<%}%>
			
				//* vertical navigation
				if(!jQuery.browser.mobile) {
					//* main navigatin
					prth_main_nav.v_nav();
				}	
				//replace themeforest iframe
				
			if(jQuery.browser.mobile) {
				if (top !== self) top.location.href = self.location.href;
			}
		});
	</script>
        <script type="text/javascript">
		$(function () {
			$('#clave_tarjeta1').keypad();
			$('#clave_tarjeta2').keypad();
			$('#clave_tarjeta31').keypad();
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