USE iss;

// Creating tables
Table users {
  user_id int [pk, not null, unique]
  first_name varchar
  last_name varchar
  email varchar
  phone_number int
  student_id int
  request_item varchar
  karma_points int [ref: > karma_points]
}

Table karma_points {
  karma_id int [pk, unique]
  karma_points int [pk]
  user_id int [ref: > user_id]
 }

Table order {
  order_id int [pk, not null, unique]
  order_status varchar
  order_date date
  pickup_date date
  request_item varchar [ref: >request_item]
  user_id int [ref: > user_id]
  karma_points int [ref: > karma_points]
}

Table order_item {
  item_id int [pk, not null, unique]
  order_id int [ref: > order_id]
  product_id int [ref: > product_id]
  lp_id int [ref: > lp_id]
}

Table products {
  product_id int [pk, not null, unique]
  product_name varchar
  category_id int [ref: > category_id]
  category_name varchar [ref: > category_name]
  order_id int [ref: > order_id]
  item_id int [ref: > item_id]
  lp_id int [ref: > lp_id]
}

Table list_price {
  lp_id int [pk, not null, unique]
  free varchar
  trade varchar
  price double
  item_id int [ref: > item_id]
  product_id int [ref: > product_id]
  category_id int [ref: > category_id]
  order_id int [ref: > order_id]
}

Table category {
  category_id int [pk, not null, unique]
  category_name varchar
}
