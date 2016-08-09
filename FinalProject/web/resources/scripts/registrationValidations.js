/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var firstNameErrorMsg = "firstNameErrorMsg";
var userPwdErrorMsg = "userPwdErrorMsg";
var userEmailIDErrorMsg = "userEmailIDErrorMsg";
var mbleNumErrorMsg = "mbleNumErrorMsg";
var lastNameErrorMsg = "lastNameErrorMsg";

$(document).ready(function () {
    $("#userFirstNameID,#userLastNameID,#userMbleNumID,#userEmailID").attr("autocomplete", "off");

    $("#joinBtn").click(function () {
        var firstName = $("#userFirstNameID").val();
        var lastName = $("#userLastNameID").val();
        var mbleNumber = $("#userMbleNumID").val();
        var userEmailID = $("#userEmailID").val();
        var userPwdID = $("#userPwdID").val();

        if (firstName === "") {
            $("#" + firstNameErrorMsg).html("Please enter first name.");
            $("#userFirstNameID").addClass('borderClass');
            return false;
        } else {
            $("#userFirstNameID").removeClass('borderClass');
        }
        if (lastName === "") {
            $("#" + lastNameErrorMsg).html("Please enter last name.");
            $("#userLastNameID").addClass('borderClass');
            return false;
        } else {
            $("#userLastNameID").removeClass('borderClass');
        }
        if (mbleNumber === "") {
            $("#" + mbleNumErrorMsg).html("Please enter mobile no.");
            $("#userMbleNumID").addClass('borderClass');
            return false;
        } else {
            $("#userMbleNumID").removeClass('borderClass');
        }
        if (userEmailID === "") {
            $("#" + userEmailIDErrorMsg).html("Please enter emailid.");
            $("#userEmailID").addClass('borderClass');
            return false;
        } else {
            $("#userEmailID").removeClass('borderClass');
        }
        if (userPwdID === "") {
            $("#" + userPwdErrorMsg).html("Please enter password.");
            $("#userPwdID").addClass('borderClass');
            return false;
        } else {
            $("#userPwdID").removeClass('borderClass');
        }
        return true;
    });

    $("#userLastNameID").keypress(function () {
        setErrorMsg($(this).val(), this.id);
    });
    $("#userFirstNameID").keypress(function () {
//        alert($(this).val().match('/\s{2,}/'))
        setErrorMsg($(this).val(), this.id);
    });
    $("#userMbleNumID").keypress(function () {
        if (isNumber(event)) {
            $("#mbleNumErrorMsg").html('');
            $("#userMbleNumID").removeClass('borderClass');
        }
    });
//    $("#userEmailID").keypress(function () {
//        if (!isValidEmailAddress($(this).val())) {
//            $("#" + userEmailIDErrorMsg).html("Please enter valid emailid.");
//            $("#userEmailID").addClass('borderClass');
//            return false;
//        }
//    });
});

function setErrorMsg(enteredID, id) {
    var isLastName = false;
    var errorMsg = "";
    var errorId = firstNameErrorMsg;
    if (id === "userLastNameID") {
        errorId = lastNameErrorMsg;
        isLastName = true;
    }
    var isAvailable = false;
    if ((enteredID.length === 0)) {
        if (Boolean(isLastName)) {
            errorMsg = "Please enter last name.";
        } else {
            errorMsg = "Please enter first name.";
        }
        isAvailable = true;
    }
    else if (enteredID.length < 8) {
        if (Boolean(isLastName)) {
            errorMsg = "last name should be atleast 8";
        } else {
            errorMsg = "first name should be atleast 8";
        }
        isAvailable = true;
    } else if (enteredID.length > 15) {
        if (Boolean(isLastName)) {
            errorMsg = "last name should not be greater than 14";
        } else {
            errorMsg = "first name should not be greater than 14";
        }
        isAvailable = true;
    }
    if (Boolean(isAvailable)) {
        $("#" + errorId).html(errorMsg);
        $("#" + this.id).addClass('borderClass');
    } else {
        $("#" + errorId).html("");
        $("#" + this.id).removeClass('borderClass');
    }
}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}


function isValidEmailAddress(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
}
;