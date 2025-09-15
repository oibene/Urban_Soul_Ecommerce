insert into customer (first_name,last_name,email,password,img_URL)
values ('Icaro', 'O', 'icaro@email.com', '123teste123', null),
		('T', 'Nagata', 'nagata@email.com', '123teste456', null);

insert into shipping_address (postal_code, address_line, address_number,address_complement,district, city, state, country, customer_id)
values (12312312,'rua dos bobos', 0, null, null, 'campola', 'SP', 'Brasil', 1);

insert into product (item_name, price, has_descount, descount, ranking, category, item_size, color, composition, description)
values ('Camisa TECH Feminina', 890.00, true, 712.00, 5, 'TECH', 'G', 'WHITE', '70% poliester, 30% algodao', 'text long text');

insert into orders (total_amount, customer_id)
values (1424.00, 1);

insert into order_items (quantity, order_id, product_id)
values (2, 1, 1);

insert into comments (ranking, comment_text, likes, customer_id, product_id)
values (5, 'Muito bom, recomendo', 1, 1, 1);
