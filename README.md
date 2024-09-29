* Create atleast 10 records using the create method

```ruby = 
Product.create(name: 'Pro Laptop A1', price: 100.00, quantity: 0, description: 'discontinued', available: false, released_at: Date.new(2024, 6, 15), expiry_date: nil, discount: 20.0)
Product.create(name: 'Laptop', price: 19.99, quantity: 10, description: 'obsolete', available: true, released_at: Date.today, expiry_date: Date.today + 15, discount: 5.0)
Product.create(name: 'Pro Cellphone', price: 29.99, quantity: 4, description: 'portable', available: true, released_at: Date.today, expiry_date: Date.new(2024, 10, 1), discount: 15.0)
Product.create(name: 'Action Camera', price: 199.99, quantity: 10, description: 'Limited time offer', available: true, released_at: Date.new(2024, 1, 10), expiry_date: Date.today - 1, discount: 11.0)
Product.create(name: 'Pro Computer', price: 600.00, quantity: 5, description: 'Out of Stock', available: false, released_at: Date.new(2023, 8, 1), expiry_date: nil, discount: 15.0)
Product.create(name: 'Laptop', price: 49.99, quantity: 3, description: 'Sale', available: true, released_at: Date.new(2023, 12, 1), expiry_date: Date.today + 10, discount: 5.0)
Product.create(name: 'Pro Laptop A2', price: 100.00, quantity: 1, description: 'Limited time offer', available: true, released_at: Date.new(2024, 5, 1), expiry_date: nil, discount: nil)
Product.create(name: 'Pro Laptop A3', price: 300.00, quantity: 10, description: 'portable', available: true, released_at: Date.new(2023, 9, 1), expiry_date: Date.today + 20, discount: 1.0)
Product.create(name: 'Laptop', price: 100.00, quantity: 0, description: 'obsolete', available: false, released_at: Date.new(2022, 6, 15), expiry_date: nil, discount: 20.0)
Product.create(name: 'Pro Laptop A4', price: 450.00, quantity: 4, description: 'Sale', available: true, released_at: Date.today, expiry_date: Date.today + 5, discount: 15.0)
```

* Create atleast 10 records using the save method

```ruby =
product1 = Product.new(name: 'Pro Laptop A12', price: 650.00, quantity: 0, description: 'obsolete', available: false, released_at: Date.new(2024, 3, 1), expiry_date: nil, discount: 20.0); product1.save
product2 = Product.new(name: 'Laptop', price: 100.00, quantity: 2, description: 'Limited time offer', available: true, released_at: Date.today, expiry_date: Date.today + 30, discount: 5.0); product2.save
product3 = Product.new(name: 'Action Laptop A13', price: 350.00, quantity: 3, description: 'Sale', available: true, released_at: Date.new(2024, 1, 15), expiry_date: nil, discount: 15.0); product3.save
product4 = Product.new(name: 'Laptop', price: 29.99, quantity: 12, description: 'discontinued', available: true, released_at: Date.today, expiry_date: Date.today + 20, discount: 10.0); product4.save
product5 = Product.new(name: 'Pro Laptop A14', price: 800.00, quantity: 1, description: 'Limited time offer', available: false, released_at: Date.new(2024, 6, 1), expiry_date: nil, discount: 20.0); product5.save
product6 = Product.new(name: 'Laptop', price: 50.00, quantity: 4, description: 'portable', available: true, released_at: Date.today, expiry_date: Date.today + 15, discount: 5.0); product6.save
product7 = Product.new(name: 'Pro Laptop A15', price: 999.99, quantity: 2, description: 'Sale', available: true, released_at: Date.new(2023, 8, 1), expiry_date: nil, discount: 1.0); product7.save
product8 = Product.new(name: 'Laptop', price: 19.99, quantity: 5, description: 'obsolete', available: false, released_at: Date.new(2023, 2, 1), expiry_date: nil, discount: 20.0); product8.save
product9 = Product.new(name: 'Pro Laptop A16', price: 450.00, quantity: 2, description: 'Limited time offer', available: true, released_at: Date.today, expiry_date: Date.today + 10, discount: 15.0); product9.save
product10 = Product.new(name: 'Laptop', price: 100.00, quantity: 0, description: 'obsolete', available: false, released_at: Date.new(2022, 9, 1), expiry_date: nil, discount: 25.0) product10.save
```

* Fetch all products where name is "Laptop".

```ruby =
Product.where(name: 'Laptop')
```

* Find products where price is greater than 100.

```ruby =
Product.where('price > ?', 100)
```

* Retrieve products where available is true.

```ruby = 
Product.where(available: true) 
``` 

* Fetch products where quantity is less than 50.

```ruby =
Product.where('quantity < ?', 50)
```

* Find products where discount is exactly 10%.

```ruby =
Product.where('discount =?', 10)
```

* Retrieve products where name contains the word "Pro".

```ruby =
Product.where('name LIKE ?', '%Pro%')
```

* Fetch products where description includes the word "portable".

```ruby =
Product.where(description: 'portable')
```

* Find products where price is between 50 and 150.

```ruby =
Product.where(price: 50..150)
```

* Retrieve products where available is false and quantity is greater than 0.

```ruby =
Product.where(available: false).where('quantity > ?', 0)
```

* Fetch products where released_at is after January 1, 2023.

```ruby =
Product.where('released_at > ?', Date.new(2023, 1, 1))
```

* Find products where expiry_date is nil.

```ruby =
Product.where(expiry_date: nil)
```

* Retrieve products where released_at is before January 1, 2022.

```ruby =
Product.where('released_at < ?', Date.new(2022, 1, 1))
```

* Fetch products where quantity is between 10 and 100.

```ruby =
Product.where(quantity: 10..100)
```

* Find products where discount is greater than or equal to 5%.

```ruby =
Product.where('discount >= ?',5)
```

* Retrieve products where price is less than or equal to 200 and available is true.

```ruby =
Product.where('price <= ? AND available = ?', 200, true)
Product.where('price <= ?',200).where(available:true)
```

* Fetch products where expiry_date is before today’s date.

```ruby =
Product.where('expiry_date < ?', Date.today)
```

* Find products where name starts with the letter "A".

```ruby =
Product.where('name LIKE ?', 'A%')
```

* Retrieve products where price is not equal to 100.

```ruby =
 Product.where('price != ?', 100)
```

* Fetch products where quantity is nil.

```ruby =
Product.where(quantity: nil)
```

* Find products where discount is not nil.

```ruby =
Product.where.not(discount: nil)
```

* Update the price of a product where name is "Laptop" to 120.

```ruby =
Product.where(name: 'Laptop').update_all(price: 120)
Product.where(name: 'Laptop') # to show
```

* Set the available status to false for products where quantity is 0.

```ruby =
Product.where(quantity: 0).update_all(available: false)
```

* Update the description to "Out of stock" for products where available is false.
 
```ruby =
Product.where(available: false).update_all(description: 'Out of stock')
```

* Change the expiry_date to December 31, 2024, for products with a discount greater than 10%.

```ruby =
Product.where('discount > ?', 10).update_all(expiry_date: Date.new(2024, 12, 31))
```

* Update the quantity to 50 for products where name starts with "Pro".

```ruby =
Product.where('name LIKE ?', '%Pro%').update_all(quantity: 50)
```

* Set the price to 200 for all products where discount is nil.

```ruby =
Product.where(discount:nil).update_all(price:200)
```

* Mark products as available if their released_at is before January 1, 2023.

```ruby =
Product.where('released_at < ?', Date.new(2023, 1, 1))
```

* Update the price to 80 where the quantity is between 10 and 20.

```ruby =
Product.where(quantity: 10..20).update_all(price:80)
```

* Remove any discount (set to nil) for products where expiry_date is before today.

```ruby =
Product.where('expiry_date < ?', Date.today).update_all(discount: nil)
```

* Update the name to "Premium Laptop" for products where price is more than 500.

```ruby =
Product.where('price > ?', 500).update_all(name: 'Premium Laptop')
```

* Set the quantity to nil for products where available is false.

```ruby =
Product.where(available: false).update_all(quantity: nil)
```

* Update released_at to the current date for products with a price less than 50.

```ruby =
Product.where('price < ?', 50).update_all(released_at: Date.today)
```

* Reduce the price by 20% for products where quantity is less than 5.

```ruby =
Product.where('quantity < ?', 5).update_all('price = price * 0.8')
```

* Set the discount to 0% for products with a price greater than or equal to 300.

```ruby = 
Product.where('price >= ?', 300).update_all(discount: 0)
```

* Change the description to "Limited time offer" where the discount is 15%.

```ruby =
Product.where(discount: 15).update_all(description: 'Limited time offer')
```

* Set available to true for products where the price is between 100 and 200.

```ruby =
Product.where(price: 100..200).update_all(available: true)
```

* Increase the quantity by 10 for products where released_at is after January 1, 2023.

```ruby =
Product.where('released_at > ?', Date.new(2023, 1, 1)).update_all('quantity = quantity + 10')
```

* Set the expiry_date to nil for products where discount is less than 5%.

```ruby =
Product.where('discount < ?', 5).update_all(expiry_date: nil)
```

* Update the price to 150 where the description contains "sale".

```ruby =
Product.where('description LIKE ?', '%sale%').update_all(price: 150)
```

* Delete a product where name is "Laptop".

```ruby =
Product.where(name: 'Laptop').delete_all
```

* Remove all products where available is false.

```ruby =
Product.where(available: false).delete_all
```

* Delete products where price is greater than 500.

```ruby
Product.where('price > ?', 500).delete_all
```

* Remove all products where quantity is 0.

```ruby
Product.where('quantity = ?', 0).delete_all
Product.where(quantity: 0).delete_all
```

* Delete products where discount is greater than 20%.

```ruby
Product.where('discount > ?', 20).delete_all
```

* Remove products where expiry_date is before today’s date.

```ruby
Product.where(expiry_date: Date.today).delete_all
```

* Delete all products where name starts with "Pro".

```ruby =
Product.where('name LIKE ?', 'Pro%').delete_all
```

* Remove products where price is less than 50.

```ruby =
Product.where('price < ?', 50).delete_all
```

* Delete products where released_at is before January 1, 2022.

```ruby =
Product.where('released_at < ?', Date.new(2022, 1, 1)).delete_all
```

* Remove products where description contains "discontinued".

```ruby =
Product.where('description LIKE ?', '%discontinued%').delete_all
```