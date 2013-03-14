package ro.isdc.auth.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Common pages controller
 * 
 * @author maachou
 * @author Paul Tamas
 * 
 */
@Controller
public class CommonPagesController {

	private static final Logger logger = Logger.getLogger(CommonPagesController.class);

	@Autowired
	
	/**
	 * Accounts page
	 * 
	 * @return login page id
	 */
	@RequestMapping(value = { "/" })
	public String getLoginPage() {
		LocaleContextHolder.getLocale();
		logger.debug("Calling Accounts page.");
		return "accountsPage";
	}

	/**
	 * Login Page
	 * 
	 * @return home page id
	 */
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String getHomePage() {
		logger.debug("Calling login page.");
		return "loginPage";
	}

}
