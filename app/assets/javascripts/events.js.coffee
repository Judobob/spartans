# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#calendar").fullCalendar
    events: "/events.json"
    
    eventRender: 
      (event, element) -> element.find(".fc-event-title").append "<div>" + event.description+"</div>",
                          element.find(".fc-event-title").wrapInner "<div style='font-weight:bold;'></div>"
                          
                                                     
   
    eventClick:
      (event) -> $("#myModal .modal-body .modal-body-content").load '/events/' + event.id, ->
                 $("#myModal").modal "show"
     
    header:
      left: 'prev,next today', center: 'title', right: 'month,agendaWeek,agendaDay'
    defaultView: 'month'
    slotMinutes: 30
    height: 600
    minTime: 3
    maxTime: 21
    
    

                          
    
    