package ro.isdc.auth.validator;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ro.isdc.auth.repository.AccountRepository;


/**
 * A general purpose controller used to validate fields on a form.
 * 
 * @author maachou
 */
@Controller
@RequestMapping("/validator/*")
public class CommonValidationController {
    private static final Logger logger = Logger.getLogger(CommonValidationController.class);

    @Autowired
    AccountRepository accountRepository;

    /**
     * Checking the existency of an email
     * 
     * @param email
     * @return "true" or "false"
     */
    @RequestMapping(value = "/checkemail", params = "email")
    public @ResponseBody
    String checkMail(@RequestParam String email) {
	logger.debug("checking email : " + email);
	return (accountRepository.findByEmail(email) != null) ? "false" : "true";
    }
    
    /**
     * Checking the existency of a CNP
     * 
     * @param cnp
     * @return "true" or "false"
     */
    @RequestMapping(value = "/checkcnp", params = "cnp")
    public @ResponseBody
    String checkCnp(@RequestParam String cnp) {
	logger.debug("checking cnp : " + cnp);
	return (accountRepository.findByCnp(cnp) != null) ? "false" : "true";
    }
}
