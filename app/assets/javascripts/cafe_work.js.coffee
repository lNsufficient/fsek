# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
   
loadCalendar = ->    
  $('#cafe_kalender').fullCalendar    
    header:
      left: 'today',
      center: 'prev    title    next',
      right: 'month,agendaWeek'
    defaultView: 'month',
    eventSources: [{ url:'/cafe_works',color: 'orange',}],
    
    aspectRatio: 2,
    axisFormat: 'HH:mm',
    timeFormat: 'HH:mm',
    allDay: false,
    allDayText: 'Heldag',
    firstDay :1,
    weekNumbers: true,
    monthNames: ['Januari','Februari','Mars','April','Maj','Juni','Juli','Augusti','September','Oktober','November','December'],
    dayNames: ['Söndag','Måndag','Tisdag','Onsdag','Torsdag','Fredag','Lördag'],
    dayNamesShort: ['Sön', 'Mån', 'Tis', 'Ons', 'Tors', 'Fre', 'Lör'],
    weekNumberTitle: 'V'    

$(document).ready(loadCalendar)
  
