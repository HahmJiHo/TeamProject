"use strict";
$(document).ready(function() {    
	$('#calendar').fullCalendar({		
		customButtons: {			
			myCustomButton: {
				text: 'save',
				click: function() {	
					console.log("11");
					
					var event = { 
							title: $('#addeventTitle').val(), 
							start: $('#addDateStart').val(),
							end: $('#addDateEnd').val(),
					};								

					if ($('#addeventTitle').val().length != 0 && $('#addDateStart').val().length != 0 && $('#addDateEnd').val().length != 0) {
						console.log(event)
						$('#calendar').fullCalendar('renderEvent', event, true);									
						$('#calendar').fullCalendar('addEventSource', event);
						$('#calendar').fullCalendar('refetchEvents');					
						swal(
								'Good job!',
								'You clicked the button!',
								'success'							
						)
						$('#calendarAddModal').modal('hide');
					} else {
						swal(
								'Good job!',
								'You clicked the button!',
								'error'							
						)						
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
		selectable: false,
		selectHelper: true,
		disableDragging : true,
		/*select: function(start, end) {
			var title = swal({
				  title: '이벤트를 입력해 주세요',
				  input: 'text',
				  showCancelButton: true,
				  inputValidator: function(value) {
				    return new Promise(function(resolve, reject, title) {
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
		},*/
		dayClick: function(date, jsEvent, view) {

			$('#calendarAddModal').modal();

		},	
		eventRender: function(event, element, view) {
			//$('.fc-myCustomButton-button').remove();
			/*$('.fc-myCustomButton-button').css('display','none');
			if ($('.fc-myCustomButton-button').length <= 1) {				
				$(".modal-footer").append('<button type="button" class="fc-myCustomButton-button fc-button fc-state-default fc-corner-left fc-corner-right" style="display:block">save</button>')
			}*/			
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
		        	 start: "2016-09-26T10:30:00-05:00",
		        	 end: "2016-09-29T12:30:00-05:00"
		         }
		         ]
	});
	$(function(){
		$('#addDateStart').datetimepicker({format:"YYYY-MM-DD HH:mm"}).data('DateTimePicker').date(new Date());
		$('#addDateEnd').datetimepicker({format:"YYYY-MM-DD HH:mm"}).data('DateTimePicker').date(new Date());
		$('#addDateStart').val('');
		$('#addDateEnd').val('');
		$('#addeventTitle').val('');
	});
});   
