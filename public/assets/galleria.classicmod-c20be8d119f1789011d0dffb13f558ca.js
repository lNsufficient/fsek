!function(t){Galleria.addTheme({name:"classicmod",author:"Jan-Philip Gehrcke, Galleria",css:"galleria.classicmod.css",defaults:{transition:"fade",thumbCrop:"height",imageCrop:!1,_toggleInfo:!0,slideshowInterval:1e3},init:function(e){Galleria.requires(1.28,"This version of Classic theme requires Galleria 1.2.8 or later");var i=this;i.addElement("info-link","info-close"),i.append({info:["info-link","info-close"]}),i.addElement("navbar","navbarhelper","playbutton","fullscreenbutton"),i.append({container:"navbar",navbar:"navbarhelper",navbarhelper:["playbutton","thumbnails-container","fullscreenbutton"]}),i.prependChild("stage","info").appendChild("container","tooltip"),i.classicplay=function(){i.setPlaytime(e.slideshowInterval),i.playToggle()},i.classicfullscreen=function(){i.toggleFullscreen(function(){i._carousel.set(i.getIndex())})},i.$("fullscreenbutton").click(function(t){t.preventDefault(),i.classicfullscreen()}),i.$("playbutton").click(function(t){t.preventDefault(),i.classicplay()}),i.bind("play",function(){this.$("playbutton").addClass("pause")}),i.bind("pause",function(){this.$("playbutton").removeClass("pause")}),i.bindTooltip({fullscreenbutton:function(){return i.isFullscreen()?"Exit fullscreen":"Enter fullscreen"},playbutton:function(){return i.isPlaying()?"Pause slideshow":"Start slideshow"}});var n=this.$("info-link,info-close,info-text"),a=Galleria.TOUCH,l=a?"touchstart":"click";this.$("loader,counter").show().css("opacity",.4),a||(this.addIdleState(this.get("image-nav-left"),{left:-50}),this.addIdleState(this.get("image-nav-right"),{right:-50}),this.addIdleState(this.get("counter"),{opacity:0})),e._toggleInfo===!0?n.bind(l,function(){n.toggle()}):(n.show(),this.$("info-link, info-close").hide()),this.bind("thumbnail",function(e){a?t(e.thumbTarget).css("opacity",this.getIndex()?1:.6):(t(e.thumbTarget).css("opacity",.6).parent().hover(function(){t(this).not(".active").children().stop().fadeTo(100,1)},function(){t(this).not(".active").children().stop().fadeTo(400,.6)}),e.index===this.getIndex()&&t(e.thumbTarget).css("opacity",1))}),this.bind("loadstart",function(e){e.cached||this.$("loader").show().fadeTo(200,.4),this.$("info").toggle(this.hasInfo()),t(e.thumbTarget).css("opacity",1).parent().siblings().children().css("opacity",.6)}),this.bind("loadfinish",function(){this.$("loader").fadeOut(200)})}})}(jQuery);