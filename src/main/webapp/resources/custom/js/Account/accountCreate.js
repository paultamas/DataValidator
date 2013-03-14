(function($, NS, SuperClass,SubClass) {
	window[NS][SubClass] = window[NS][SubClass] || window[NS][SuperClass].extend({
	toString:function(){return NS + '.' + SubClass;},
	rolesToUpdate : [],
	selectedRoles : {},
	allExistingRoles : [],
	/** Constructor. */
    init : function(cfg) {
      this.bindBehavior(this);
    },
    /**
     * Binds client-side behavior.
     */
    bindBehavior : function() {
    	this.initCancelButton();
    	this.validateAndSubmitForm();    	
    	$('.container').css({'padding-top': function () {    			
					return ($('div.navbar-fixed-top').height());
				}
    	});  
    },
    /**
     * Validates the Form before submitting it
     * */
    validateAndSubmitForm : function(){
    	var that=this;
    	$("#accountForm").validate({
    		rules: {
    			firstName: "required",
    			lastName: "required",
    			password: {
    				required: true,
    				minlength: 5,
    				maxlength:10
    			},
    			password_confirm: {
    				required: true,
    				minlength: 5,
    				maxlength: 10,
    				equalTo: "#password"
    			},
    			email: {
    				required: true,
    				email: true,
    				remote: "/validator/checkemail"
    			}
    		},
    		messages: {
    			firstName: {required : $('body').data('firstname')},
    			lastName:  {required  : $('body').data('lastname')},
    			password:  {
    				required: $('body').data('password'),
    				minlength: $.format($('body').data('minlength')),
    				maxlength: $.format($('body').data('maxlength'))
    			},
    			password_confirm: {
    				required: $('body').data('passwordconfirm'),
    				minlength: $.format($('body').data('minlength')),
    				maxlength: $.format($('body').data('maxlength')),
    				equalTo: $('body').data('equalto')
    			},
    			email: {
    				required: $('body').data('email'),
    				email: $('body').data('email'),
    				remote: $.format($('body').data('remote'))
    			}
    		},
    		errorPlacement: function(error, element) {
    			error.appendTo(element.next());
    		},
    		submitHandler: function() {
    			var jsonData = null, index = null;
    			    			
    			jsonData = {
    				firstName : $("input#firstName").val(),
    				lastName : $("input#lastName").val(),
    				cnp : $("input#cnp").val(),
    				email : $("input#email").val(),
    			};
    			$.ajax({  
    				  type: "POST",  
    				  url: "/domain/accounts/",  
    				  data: JSON.stringify(jsonData),
    				  contentType: "application/json; charset=utf-8",
    				  success: function(response,status,xhr) {
    						//shows a confirmation message in a RED div if error===true, else shows it in a BLACK div
    						$().message(response.message,response.error);
    					  document.location.href='/domain/accounts/list';
    				  }
    				});  
    			return false; 
    		},
    		success: function(label) {
    		}
    	});    	
    },
    /**
     * Binds the onClick event on the Cancel button
     * */
    initCancelButton : function (){
    	var that=this;
    	$("#cancelButton").click(function() {
    		document.location.href='/domain/accounts/list';
    	});	
    }
  });

  /* Attach page specific behavior on page load */
  $(function() {
	  return new window[NS][SubClass]();
  });
}(jQuery, "WMC","Base","AccountCreate"));