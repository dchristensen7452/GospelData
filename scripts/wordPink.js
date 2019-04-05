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
var corr = ":regex(src,";
//Select and highlight word and corresponding Gospels on mouseover
$(document).ready(function(){	
	$(word).mouseover(function(){
		var ref = this.id;
		//console.log(ref);
		$(this).css({backgroundColor: "pink"});
		$(corr+ref+')').css({backgroundColor: "pink"}); //closing ')' needed to complete var = corr
		//console.log(corr+ref+')');
	});
	$(word).mouseout(function(){
		var ref = this.id;
		$(this).css({backgroundColor: "lightgray"});
		$(corr+ref+')').css({backgroundColor: "lightgray"});
	});
});