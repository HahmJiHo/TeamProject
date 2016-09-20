
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href='../css/fullcalendar.css' rel='stylesheet' />
<link href='../css/fullcalendar.print.css' rel='stylesheet'
	media='print' />
<script src='../js/moment.min.js'></script>
<script src='../js/jquery.min.js'></script>
<script src='../js/fullcalendar.min.js' charset="UTF-8"></script>
<script src='../js/ko.js'></script>


<script>
"use strict";
  $(document).ready(function() {
	  var CalLoading = true;    
    $('#calendar').fullCalendar({

      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      lang : "ko",
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectHelper: true,
      disableDragging : true,
      select: function(start, end) {
    	  var title = prompt('Event Title:');
        var eventData;
        if (moment().diff(start, 'days') > 0) {
        	$('#calendar').fullCalendar('unselect');        
        	alert("지나간 날입니다.");        	  
           return false;
        }     
        if (title) {
          eventData = {
            title: title,
            start: start,
            end: end
          };
          $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
        }      
        $('#calendar').fullCalendar('unselect');
      },

      eventRender: function(event, element, view) {
    	    var ntoday = new Date().getTime();
          var eventEnd = moment(event.end).valueOf();
          var eventStart = moment(event.start).valueOf();
          if (eventStart >= ntoday) {
        	  element.append( "<span class='closeon' style='position:absolute; right:0; top:0; z-index:1000;'>X</span>" );
          } 
          if (eventEnd < ntoday) {
        	//  event.disableDragging(); 
          }
         element.find(".closeon").click(function() {         
        	  var r = confirm("Delete " + event.title);
            if (r == true) {
            	  $('#calendar').fullCalendar('removeEvents', event._id);
            }              
          });		        
 
      },
    	eventClick: function(event, start, end) {
    		var moment11 = $('#calendar').fullCalendar('getDate');
    		start = moment(event.start).format('YYYY-MM-DD HH:mm');
    		end = moment(event.end).format('YYYY-MM-DD HH:mm');

    		alert("Event title: " + event.title + " Start Date: " + start + " End Date: " + end );	
    		
    		},
    	
    		viewRender:function (view,element) { 	     
	        	$('#btnPopupSave').click(function () {
	             var event={ 
	                 title: $('#eventTitle').val(), 
	                 start: $('#eventDate').val() + 'T' + $('#eventDateStartTime').val(), 
	                 end: $('#eventDateEnd').val() + 'T' + $('#eventDateEndTime').val()
	           };
	          
	          $('#calendar').fullCalendar('renderEvent', event, true);
	          $('#calendar').fullCalendar('addEventSource', event);
	          $('#calendar').fullCalendar('refetchEvents');
	          
	         });
	        
   	    },	 		
      editable: true,
      eventLimit: true, // allow "more" link when too many events      
      events: [

							{
			
								title: "Meeting",
						    start: "2016-09-18T10:30:00-05:00",
						    end: "2016-09-22T12:30:00-05:00"
						  },
						  {
						      
                title: "Meeting",
                start: "2016-09-15T10:30:00-05:00",
                end: "2016-09-18T12:30:00-05:00"
              }
      ]
    });
    function ShowEventPopup(date) {
        //ClearPopupFormValues();
        $('#popupEventForm').show();
        $('#eventTitle').focus(); 
    };
 
  });
  


</script>
<style>
#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
</head>
<body>

	<div id='calendar'></div>
	<div id="popupEventForm" class="modal hide" style="display: block;">
		<div class="modal-header">
			<h3>Add new event</h3>
		</div>
		<div class="modal-body">
			<form id="EventForm" class="well">
				<input type="hidden" id="eventID"> <label>Event	title</label>
				<input type="text" id="eventTitle" placeholder="Title here"><br />
				<label>Scheduled Start date</label> 
				<input type="text" id="eventDate" placeholder="2016-09-22">
				<label>Scheduled Start Time</label> 
        <input type="text" id="eventDateStartTime" placeholder="13:00"><br />
        <label>Scheduled end date</label>
        <input type="text" id="eventDateEnd" placeholder="2016-09-25">
        <label>Scheduled End Time</label> 
        <input type="text" id="eventDateEndTime" placeholder="20:00"><br />
			</form>
		</div>
		<div class="modal-footer">
			<button type="button" id="btnPopupCancel" data-dismiss="modal"
				class="btn">Cancel</button>
			<button type="button" id="btnPopupSave" data-dismiss="modal"
				class="btn btn-primary">Save event</button>
		</div>
	</div>
</body>
</html>
