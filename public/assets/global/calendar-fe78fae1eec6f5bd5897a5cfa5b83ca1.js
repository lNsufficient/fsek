(function(){$(document).ready(function(){return $("#kalender").fullCalendar({header:{left:"today",center:"prev    title    next",right:"month,agendaWeek"},defaultView:"month",eventSources:[{url:"/events",color:"orange"}],aspectRatio:2,axisFormat:"HH:mm",timeFormat:"HH:mm",allDay:!1,allDayText:"Heldag",firstDay:1,weekNumbers:!0,monthNames:["Januari","Februari","Mars","April","Maj","Juni","Juli","Augusti","September","Oktober","November","December"],dayNames:["S\xf6ndag","M\xe5ndag","Tisdag","Onsdag","Torsdag","Fredag","L\xf6rdag"],dayNamesShort:["S\xf6n","M\xe5n","Tis","Ons","Tors","Fre","L\xf6r"],weekNumberTitle:"V"})})}).call(this);