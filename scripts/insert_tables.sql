insert into customer (customer_id, first_name,last_name,email,password,img_URL)
values (1, 'Icaro', 'O', 'icaro@email.com', '123teste123', null),
		(2, 'T', 'Nagata', 'nagata@email.com', '123teste456', null);

insert into shipping_address (postal_code, address_line, address_number,address_complement,district, city, state, country, customer_id)
values (12312312,'rua dos bobos', 0, null, null, 'campola', 'SP', 'Brasil', 1);

insert into product (product_id, item_name, price, has_descount, descount, ranking, category, item_size, gender, color, composition, description, category_id)
values (1, 'Camisa TECH Feminina', 890.00, true, 712.00, 5, 'TECH', 'G', 'F', 'WHITE', '70% poliester, 30% algodao', 'text long text', 2);

insert into category (category_id, category_type, category_name)
values (1, 'JEANS', 'Jeans'),
		(2, 'TSHIRT', 'Camisas'),
		(3, 'PANTS', 'Calças'),
		(4, 'LONGSHIRT', 'Manga Longa'),
		(5, 'SWEATER', 'Moletom');

insert into orders (order_id, total_amount, customer_id)
values (1, 1424.00, 1);

insert into order_items (quantity, order_id, product_id)
values (1, 1);

insert into comments (ranking, comment_text, likes, customer_id, product_id)
values (5, 'Muito bom, recomendo', 1, 1, 1);
