# Agrostar-assignment




Table         	Primary Key	                  Foreign Key
Supplier	     supplier_id	                   customer_id
Product	       product_id	                     supplier_id, category_id
Category	     category_id	
Order	         order_id	                       customer_id, payment_id, cart_id
Customer	     customer_id	
Payment        payment_id	                      Customer_id
Cart	         cart_id	                       Order_id, product_id



