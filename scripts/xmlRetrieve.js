function xmlRetrieve() {
	var newRequest = new XMLHttpRequest();
		newRequest.onreadystatechange = function () {
			if (this.readyState == 4 && this.status == 200) {
				loopXML(this);
			}
       };
// OPEN THE XML DOCUMENT AND SEND IT TO THE DOM
	newRequest.open("GET", "../xml/pericopae.xml", true);
		newRequest.send();

};

// ADD THE SECOND FUNCTION HERE - Loop through XML to retrieve data
function loopXML(xml) {
	var data, i, xmlDoc, info;
	
	xmlDoc = xml.responseXML;
		//console.log(xmlDoc);
	info = "";
	data = xmlDoc.getElementsByTagName("pericope");
		for (i = 0; i < data.length; i++) {
		info = data[i].childNodes[3].nodeValue; 
		}
		console.log(info);
		//console.log(data);
		document.getElementById("MattRange").innerHTML = info;
};