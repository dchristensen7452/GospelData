//Filter for Regular Expressions Search Utility - by James Padolsey
//FORMAT => $('element:regex(attribute, regularExpressionHere)');
// 'https://j11y.io/javascript/regex-selector-for-jquery/'
jQuery.expr[':'].regex = function(elem, index, match) {
    var matchParams = match[3].split(','),
        validLabels = /^(data|css):/,
        attr = {
            method: matchParams[0].match(validLabels) ? 
                        matchParams[0].split(':')[0] : 'attr',
            property: matchParams.shift().replace(validLabels,'')
        },
        regexFlags = 'ig',
        regex = new RegExp(matchParams.join('').replace(/^\s+|\s+$/g,''), regexFlags);
    return regex.test(jQuery(elem)[attr.method](attr.property));
}

//HIGHLIGHT TEXT WORDS ACROSS GOSPELS
//Define variables for regular expressions
var word = ":regex(id, \\d+)";
//Select Part of Speech Title for mouseover word
$(document).ready(function(){	
	$(word).mouseover(function(){
		var pos = this.title;
		$('.parse').html(pos);
		//cosole.log(pos);
	});
});