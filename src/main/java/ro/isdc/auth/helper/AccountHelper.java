package ro.isdc.auth.helper;

import org.springframework.stereotype.Component;

import ro.isdc.auth.domain.Account;
import ro.isdc.auth.support.ValueGenerator;
import ro.isdc.auth.helper.EntityHelper;;
/**
 * Account Helper
 * 
 * @author maachou
 * @author Adrian.Ursu
 * 
 */
@Component
public class AccountHelper implements EntityHelper<Account> {

	private static final String PASSWORD_UI = "**********";

	@Override
	public Account copyFrom(final Account entity) {
		Account copy = new Account();
		copy.setId(entity.getId());
		copy.setFirstName(entity.getFirstName());
		copy.setLastName(entity.getLastName());
		copy.setEmail(entity.getEmail());
		copy.setCnp(entity.getCnp());
		return copy;
	}

	@Override
	public Account copyWithoutPkFrom(final Account entity) {
		Account copy = new Account();
		copy.setFirstName(entity.getFirstName());
		copy.setLastName(entity.getLastName());
		copy.setEmail(entity.getEmail());
		copy.setCnp(entity.getCnp());
		return copy;
	}

	@Override
	public Account createEntityInstance() {
		return new Account();
	}

	@Override
	public Account createRandomEntity() {
		Account account = new Account();
		account.setFirstName(ValueGenerator.getMaxString(100));
		account.setLastName(ValueGenerator.getMaxString(100));
		account.setEmail(ValueGenerator.getUniqueEmail());
		account.setCnp(ValueGenerator.getMaxString(13));
		return account;
	}

	@Override
	public Account updateFrom(final Account fromEntity, Account toEntity) {
		toEntity.setFirstName(fromEntity.getFirstName());
		toEntity.setLastName(fromEntity.getLastName());
		toEntity.setCnp(fromEntity.getCnp());
		return toEntity;
	}


}
