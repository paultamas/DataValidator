(function($, NS, SuperClass,SubClass) {
	window[NS][SubClass] = window[NS][SubClass] || window[NS][SuperClass].extend({
	toString:function(){return NS + '.' + SubClass;},
	rolesToUpdate : [],
	existingRoles : {},
	possibleRoles : [],
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
     * Validates the Form before submitting it for users having ROLE_ADMIN
     * */
    validateAndSubmitForm : function(){
    	var that=this;
    	$("#accountEditForm").validate({
    		rules: {
    			firstName: "required",
    			lastName: "required",
    			cnp: {
    				required: true,
    				remote: "/validator/checkcnp"
    			},
    			email: {
    				required: false,
    				email: true    				
    			}
    		},
    		messages: {
    			firstName: {required : "Introduceti prenumele"},
    			lastName:  {required  : "Introduceti numele de familie"},
    			cnp: {
    				required : "Camp obligatoriu",
    				remote: "Acest CNP exista deja in baza de date"
    			},
    			email: {
    				required: "Camp obligatoriu",
    				email: "Introduceti o adresa de email valida"
    			}
    		},
    		errorPlacement: function(error, element) {
    			error.appendTo( element.next() );
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
    				  type: "PUT",  
    				  url: "/domain/accounts/"+$("input#id").val(),  
    				  data: JSON.stringify(jsonData),
    				  contentType: "application/json; charset=utf-8",
    				  success: function(response,status,xhr) { 
    					  //shows a confirmation message in a RED div if error===true, else shows it in a BLACK div
    					  $().message(response.message,response.error);
    					  if(response.error===false){
    						  document.location.href='/domain/accounts/list/';   						  
    					  }
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
    	$("#cancelButton").click(function() {
    		document.location.href='/domain/accounts/list';
    	});	
    }
  });

  /* Attach page specific behavior on page load */
  $(function() {
	  return new window[NS][SubClass]();
  });
}(jQuery, "WMC","Base","AccountUpdate"));