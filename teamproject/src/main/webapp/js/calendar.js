"use strict";
$(document).ready(function() {
	var CalLoading = true;    
	$('#calendar').fullCalendar({
		customButtons: {
	        myCustomButton: {
	            text: 'save',
	            click: function() {					
					var event = { 
							title: $('#eventTitle').val(), 
							start: $('#eventDateStart').val(),
							end: $('#eventDateEnd').val(),
					 };
									
					if (event.start != null && event.end != null) {
						console.log(event)
						$('#eventDateStart').val('');
						$('#eventDateEnd').val('');	
						$('#calendar').fullCalendar('renderEvent', event, true);									
						$('#calendar').fullCalendar('addEventSource', event);
						$('#calendar').fullCalendar('refetchEvents');					
					}   	
	           }
	        }
	    },
		header: {
			left: 'prev,next today myCustomButton',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		lang : "ko",
		navLinks: true, // can click day/week names to navigate views
		selectable: true,
		selectHelper: true,
		disableDragging : true,
		select: function(start, end) {
			var title = swal({
				  title: 'Input something',
				  input: 'text',
				  showCancelButton: true,
				  inputValidator: function(value) {
				    return new Promise(function(resolve, reject) {
				      if (value) {
				        resolve();
				      } else {
				        reject('You need to write something!');
				      }
				    });
				  }
				}).then(function(result) {
				  swal({
				    type: 'success',
				    html: 'You entered: ' + result
				  });
			})
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
				element.append( "<span class='closeon' style='display:blokc; position:absolute; right:0; top:0; z-index:1000;'>X</span>" );

			} 
			if (eventEnd < ntoday) {
				event.editable = false;
			}
			element.find(".closeon").click(function() {         
				/*
				var r = confirm("Delete " + event.title);
				if (r == true) {
					$('#calendar').fullCalendar('removeEvents', event._id);
				}              
				*/
								
				swal({
					  title: 'Are you sure?',
					  text: "일정을 삭제 하시겠습니까?",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Yes, delete it!'
					}).then(function() {
					  swal(
					    'Deleted!',
					    'Your file has been deleted.',
					    'success'
					  );
					  $('#calendar').fullCalendar('removeEvents', event._id);
					})
				
				
				return false;
			});
			
			


		},
		eventClick: function(event, start, end) {
			var moment11 = $('#calendar').fullCalendar('getDate');
			start = moment(event.start).format('YYYY-MM-DD HH:mm');
			end = moment(event.end).format('YYYY-MM-DD HH:mm');

			//alert("Event title: " + event.title + " Start Date: " + start + " End Date: " + end );
			
			$('#modalTitle').html(event.title);
			$('.modal-start-date').html(start);
			$('.modal-end-date').html(end);
            $('#modalBody').html(event.description);
            $('#eventUrl').attr('href',event.url);
            $('#calendarModal').modal();
			

		},
		viewRender:function (view,element) { 	    
			
			
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
	$(function(){
		$('#eventDateStart').datetimepicker({format:"YYYY-MM-DD HH:mm"}).data('DateTimePicker').date(new Date());
		$('#eventDateEnd').datetimepicker({format:"YYYY-MM-DD HH:mm"}).data('DateTimePicker').date(new Date());
		$('#eventDateStart').val('');
		$('#eventDateEnd').val('');				
		
	});
});   

/* 모바일..
   var filter = "win16|win32|win64|mac";

   if (navigator.platform) {
     if(0 > filter.indexOf(navigator.platform.toLowerCase())) {
       $('.mobile-add-caledar').css('display','block')
     }
   }
 */