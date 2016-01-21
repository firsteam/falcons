function checkConsigneeName(t,id)
{
	var submit_disabled = false;
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = '{$lang.flow_js.consignee_not_null}';
		submit_disabled = true;
	} else {
		document.getElementById(id).innerHTML = '';
	}

	if (submit_disabled) {
		document.forms['theForm'].elements['Submit'].disabled = 'disabled';
		return false;
	}
}
function checkCountry(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'Country不能为空';
		submit_disabled = true;
	} else {
		document.getElementById(id).innerHTML = '';
	}

	if (submit_disabled) {
		document.forms['theForm'].elements['Submit'].disabled = 'disabled';
		return false;
	}
}
function checkProvince(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'Province不能为空';
	} else {
		document.getElementById(id).innerHTML = '';
	}
}
function checkProvince(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'Province不能为空';
	} else {
		document.getElementById(id).innerHTML = '';
	}
}
function checkCity(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'City不能为空';
	} else {
		document.getElementById(id).innerHTML = '';
	}
}
function checkAddress(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'Address不能为空';
	} else {
		document.getElementById(id).innerHTML = '';
	}
}
function checkMobile(t,id)
{
	if (t.value.length == 0) { 
		document.getElementById(id).innerHTML = 'Mobile不能为空';
	} else {
		document.getElementById(id).innerHTML = '';
	}
}

function check_preg_match(v, type) {
	var pattern = '';
	switch (type) {
	case 'taxpayer_id':
		pattern = '^[0-9]{15,}$';
		break;
	case 'name':
		pattern = '^[0-9A-z]+ *[0-9A-z]+$';
		break;
	case 'phone_number':
		pattern = '^1[0-9]{10}$';
	}
	var preg = new RegExp(pattern);
	return preg.test(v);
}