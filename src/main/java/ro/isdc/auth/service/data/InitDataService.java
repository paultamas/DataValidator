package ro.isdc.auth.service.data;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ro.isdc.auth.domain.Account;
import ro.isdc.auth.repository.AccountRepository;


/**
 * Data initialization service
 * 
 * @author Adrian.Ursu
 * 
 */
@Service("initDataService")
public class InitDataService {

	private static final Logger log = Logger.getLogger(InitDataService.class);

	@Autowired
	AccountRepository userRepository;

	public void init() {
		log.debug("Generating random accounts for test data");
	
		Account admin = new Account();
		admin.setFirstName("John");
		admin.setLastName("Doe");
		admin.setEmail("admin@mail.com");
		admin.setPassword(DigestUtils.md5Hex("admin"));

		admin.setIsEnabled(true);
		this.userRepository.save(admin);
		this.userRepository.save(admin);
		/* A user with no admin right */
		Account user = new Account();
		user.setFirstName("Jane");
		user.setLastName("Doe");
		user.setEmail("user@mail.com");
		user.setPassword(DigestUtils.md5Hex("user"));
		user.setIsEnabled(true);
		this.userRepository.save(user);		
		this.userRepository.save(user);

		// add 100 more users without roles (To test pagination)
		List<Account> listUsers = new ArrayList<Account>();
		Account aUser;
		for (int i = 0; i < 100; i++) {
			aUser = new Account();
			aUser.setFirstName("FirstName_" + i);
			aUser.setLastName("LastName_" + i);
			aUser.setEmail("User_" + i + "@mail.com");
			aUser.setPassword(DigestUtils.md5Hex("user"));
			aUser.setIsEnabled(true);
			listUsers.add(aUser);

		}
		this.userRepository.save(listUsers);		
	}

}
