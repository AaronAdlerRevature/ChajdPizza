insert into SpecialtyPizzas (Name, Price, Description) values ('Vegilicious', 4.99,'Fresh Mushrooms, Onions, Green Peppers, Black Olives, Tomatoes and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('The Supreme', 5.99,'Pepperoni, Sausage, Canadian Bacon, Green Peppers, Onions, Mushrooms, Tomatoes and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Meat Lovers', 5.99,'Pepperoni, Sausage, Ground Beef, Ham, Canadian Bacon and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Meal Buster', 4.99,'Pepperoni, Mushrooms, Onions, Green Peppers, Sausage and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Hawaiian', 3.99,'Pineapples, Ham and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Philly Cheese Steak', 5.99,'Steak, Mushrooms, Onions, Green Peppers and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Greek', 6.99,'Spinach, Onions, Gyro Meat, Black Olives, Ricotta Cheese, Feta Cheese, Mozzarella Cheese and Cheddar Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('BBQ Chicken', 4.99,'BBQ Sauce, Chicken, Onions, Green Peppers and Extra Cheese');
insert into SpecialtyPizzas (Name, Price, Description) values ('Chicken Alfredo', 5.99,'Alfredo Sauce, Chicken, Broccoli and Mushrooms');
insert into SpecialtyPizzas (Name, Price, Description) values ('Buffalo Chicken', 5.99,'Buffalo Sauce, Chicken, Jalapeno Peppers and Banana Peppers');

insert into Size (BaseSize, S_Price) values ('Small', 7.99)
insert into Size (BaseSize, S_Price) values ('Medium', 9.99)
insert into Size (BaseSize, S_Price) values ('X-Large', 11.99)

insert into Toppings (Name) values ('Extra Cheese');
insert into Toppings (Name) values ('Pepperoni');
insert into Toppings (Name) values ('Ground Beef');
insert into Toppings (Name) values ('Ham');
insert into Toppings (Name) values ('Italian Sausage')
insert into Toppings (Name) values ('Canadian Bacon');
insert into Toppings (Name) values ('Chicken');
insert into Toppings (Name) values ('Tomatoes');
insert into Toppings (Name) values ('Mushrooms');
insert into Toppings (Name) values ('Black Olives');
insert into Toppings (Name) values ('Green Peppers');
insert into Toppings (Name) values ('Jalapeno Peppers');
insert into Toppings (Name) values ('Banana Peppers');
insert into Toppings (Name) values ('Sweet Peppers');
insert into Toppings (Name) values ('Pineapples');
insert into Toppings (Name) values ('Feta Cheese');
insert into Toppings (Name) values ('Spinach');


insert into orders (CustomerId, NetPrice, isCompleted, TimePlaced, DeliveryAddress)
values (1, 12.49, 1, CURRENT_TIMESTAMP, '425 Reston Ave, Reston, VA')

insert into OrderDetails (OrdersId, SizeId, ToppingsSelected, ToppingsCount, Price, SpecialRequest) 
values (1, 2, 'Canadian Bacon;Pepperoni',2, 12.49,'None');
