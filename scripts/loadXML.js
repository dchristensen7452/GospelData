$(document).ready(function loadXMLDoc(){
      
        var newRequest = new XMLHttpRequest();
        newRequest.onreadystatechange = function () {
          if (this.readyState == 4 && this.status == 200) {
            extract(this);
          }
        };
        // OPEN THE XML DOCUMENT AND SEND IT TO THE DOM
		newRequest.open("GET", "../xml/pericopae.xml", true);
		newRequest.send();
		
		//Extract Data from XML
		function extract(xml) {
			
		};

		
});
