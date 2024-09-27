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
product = Product.where('quantity < ?', 50)
product
```