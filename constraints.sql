-- Altering table user_rec making Unique
	desc user_rec;

	ALTER TABLE user_rec
	ADD CONSTRAINT uq_general_purp_id UNIQUE (general_purp_id);
    
	ALTER TABLE user_rec
	ADD CONSTRAINT uq_rolebased_id UNIQUE (rolebased_id);
    
    ALTER TABLE user_rec
	ADD CONSTRAINT fk_insurance_id
	FOREIGN KEY (insurance_id) REFERENCES insurance(insurance_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
	ALTER TABLE user_rec
	ADD CONSTRAINT fk_subscription_id
	FOREIGN KEY (subscription_id) REFERENCES subscription(subscription_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
-- Altering table credential
	desc credential;

	ALTER TABLE credential
	ADD CONSTRAINT fk_general_purp_id
	FOREIGN KEY (general_purp_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

	ALTER TABLE credential
	ADD CONSTRAINT fk_rolebased_id
	FOREIGN KEY (rolebased_id) REFERENCES user_rec(rolebased_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

	ALTER TABLE credential
	ADD CONSTRAINT fk_user_insurance_id
	FOREIGN KEY (insurance_id) REFERENCES insurance(insurance_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Altering table insurance
	desc insurance;

	ALTER TABLE insurance
	ADD CONSTRAINT fk_user_general_id
	FOREIGN KEY (user_general_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Altering table subscription
	desc subscription;
    
	ALTER TABLE subscription
	ADD CONSTRAINT uq_subscription_id UNIQUE (subscription_id);
    
	ALTER TABLE subscription
	ADD CONSTRAINT fk_user_general_purp_id
	FOREIGN KEY (user_gen_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Altering auth_data
	desc auth_data;

	ALTER TABLE auth_data
	ADD CONSTRAINT fk_user_gen_id
	FOREIGN KEY (user_gen_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
	ALTER TABLE auth_data
	ADD CONSTRAINT fk_user_role_id
	FOREIGN KEY (rolebased_id) REFERENCES user_rec(rolebased_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
-- Altering Store inventory table
	desc store_inventory;
    
	ALTER TABLE store_inventory
	ADD CONSTRAINT uq_batch_code UNIQUE (batch_no);
    
	ALTER TABLE store_inventory
	ADD CONSTRAINT uq_product_id UNIQUE (product_id);

-- Altering order records
	desc order_records;
    
	ALTER TABLE order_records
	ADD CONSTRAINT fk_users_general_id
	FOREIGN KEY (user_gen_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
	ALTER TABLE order_records
	ADD CONSTRAINT fk_product_id
	FOREIGN KEY (product_code) REFERENCES store_inventory(product_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
	ALTER TABLE order_records
	ADD CONSTRAINT fk_batch_no
	FOREIGN KEY (batch_code) REFERENCES store_inventory(batch_no)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
    
-- Altering appointment table
	desc appointment;
    
	ALTER TABLE appointment
	ADD CONSTRAINT fk_users_general_purp_id
	FOREIGN KEY (user_gen_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Altering table health_records
	desc health_records;

	ALTER TABLE health_records
	add CONSTRAINT fk_users_gen_purp_id
	FOREIGN KEY (user_gen_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

-- Altering payment table
	desc payment;
    
	ALTER TABLE payment
	ADD CONSTRAINT uq_payment_id UNIQUE (payment_id);
    
	ALTER TABLE payment
	add CONSTRAINT fk_users_gen_purpose_id
	FOREIGN KEY (user_id) REFERENCES user_rec(general_purp_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;