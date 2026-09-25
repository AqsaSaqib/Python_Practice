# Primary Keys
- actor: actor_id
- film: film_id
- film_actor: actor_id, film_id
- category: category_id
- film_category: film_id, category_id
- language: language_id
- inventory: inventory_id
- rental: rental_id
- payment: payment_id
- customer: customer_id
- staff: staff_id
- store: store_id
- address: address_id
- city: city_id
- country: country_id

# Foreign Keys
- film: language_id
- film_actor: actor_id, film_id
- film_category: film_id, category_id
- inventory: film_id, store_id
- rental: inventory_id, customer_id, staff_id
- payment: customer_id, rental_id, staff_id
- customer: address_id, store_id
- staff: address_id, store_id
- store: manager_staff_id, address_id
- address: city_id
- city: country_id

# Relationship Discovery
## film
- language_id: language

## film_actor
- actor_id: actor
- film_id: film

## film_category
- film_id: film
- category_id: category

## inventory
- film_id: film
- store_id: store

## rental
- inventory_id: inventory
- customer_id: customer
- staff_id: staff

## payment
- customer_id: customer
- rental_id: rental
- staff_id: staff

## customer
- address_id: address
- store_id: store

## staff
- address_id: address
- store_id: store

## store
- manager_staff_id: staff
- address_id: address

## address
- city_id: city

## city
- country_id: country