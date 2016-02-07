/* Scripts for the tables test page
   Author: Maggie Wachs, www.filamentgroup.com
   Date: November 2011
   Dependencies: jQuery, jQuery UI widget factory
*/

(function(c){c.widget("filament.table",{options:{idprefix:null,persist:null,checkContainer:null},_create:function(){var g=this.options,d=this.element,a=d.find("thead"),e=d.find("tbody"),a=a.find("th"),i=e.find("tr"),b=g.checkContainer?c(g.checkContainer):c('<div class="table-menu table-menu-hidden"><ul /></div>');d.addClass("enhanced");a.each(function(h){var f=c(this),a=f.attr("id"),d=f.attr("class");a||(a=(g.idprefix?g.idprefix:"col-")+h,f.attr("id",a));i.each(function(){var b=c(this).find("th, td").eq(h); b.attr("headers",a);d&&b.addClass(d)});if(!f.is("."+g.persist)){var e=c('<li><input type="checkbox" name="toggle-cols" id="toggle-col-'+h+'" value="'+a+'" /> <label for="toggle-col-'+h+'">'+f.text()+"</label></li>");b.find("ul").append(e);e.find("input").change(function(){var a=c(this),b=a.val(),b=c("#"+b+", [headers="+b+"]");a.is(":checked")?b.show():b.hide()}).bind("updateCheck",function(){f.css("display")=="table-cell"||f.css("display")=="inline"?c(this).attr("checked",true):c(this).attr("checked", false)}).trigger("updateCheck")}});c(window).bind("orientationchange resize",function(){b.find("input").trigger("updateCheck")});g.checkContainer||(e=c('<div class="table-menu-wrapper" />'),a=c('<a href="#" class="table-menu-btn gh_button pill">Mostrar/Ocultar columnas</a>'),a.click(function(){b.toggleClass("table-menu-hidden");return!1}),e.append(a).append(b),d.before(e),c(document).click(function(a){!c(a.target).is(b)&&!c(a.target).is(b.find("*"))&&b.addClass("table-menu-hidden")}),b.closest(".box_c_content").css("overflow", "hidden"))},disable:function(){},enable:function(){}})})(jQuery);
