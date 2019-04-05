function openPericope(sheet) {
	
	var num = sheet
	var newRequest = new XMLHttpRequest();
		newRequest.onreadystatechange = function () {
			if (this.readyState == 4 && this.status == 200) {
            myFunction(this);
        }
};
// OPEN THE XML DOCUMENT AND SEND IT TO THE DOM
newRequest.open("GET", "xslt/gospelDataTemplate.xsl", true);
newRequest.send();

	
//Find and Replace Pericope Number
function myFunction(xml){
	//console.log(num);
	//console.log(xml);
	
	var xsl = xml.responseXML;
	//var regex = "/pericopae/pericope['num']/number";
	var Open = "pericopae/pericope";
	var Close = "/number";
	
	//Find Nodes with XSL Values to Change
	xslDoc = xsl.querySelectorAll("[id='testTitle']");
	xslDoc[0].children[0].attributes[0].nodeValue = Open+'['+num+']'+Close;
	console.log(xslDoc[0].children[0].attributes[0].nodeValue);
	
};


};
