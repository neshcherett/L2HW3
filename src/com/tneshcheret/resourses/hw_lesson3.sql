/*Задание 1.Написать sql запрос, который выведет бренд автомобиля и цвет и цену
  который имеет цвет белый или черный и имеет цену менее 15000.*/
select car_brand,
       color,
       price
from car
where price < 15000 AND
      color = 'black'
   or color = 'white';

/*Задание 2.Написать sql запрос, который выведет общую стоимость черных автомобилей
  в разрезе бренда, но на сумму не больше 10000. Вывести только бренд и общую стоимость.*/
select car_brand,
       sum(price)
from car
where color = 'black'
group by car_brand
having sum(price)
           < 10000;

/*Задание 3. Написать sql запрос, который выведет Номер заказа,
  имя клиента, бренд автомобиля и цену*/
select order_number,
       client_name,
       "order".car_brand,
        c.price
from "order"
         left join car c on "order".car_brand = c.car_brand;