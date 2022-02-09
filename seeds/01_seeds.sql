INSERT INTO users (name, email, password)
VALUES ('bob', 'bob@pm.me', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
VALUES ('joe', 'joe@pm.me', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
VALUES ('moe', 'moe@pm.me', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'big house', 'description', 'pic', 'pic', 10, 5, 5, 5, 'USA', 'madison ave', 'seattle', 'WA', '98104', TRUE),
VALUES (2, 'small house', 'description', 'pic', 'pic', 15, 1, 1, 1, 'canada', 'fraser st', 'vancouver', 'BC', 'v5j8s2', TRUE),
VALUES (3, 'medium house', 'description', 'pic', 'pic', 20, 2, 3, 4, 'canada', 'beverley st', 'toronto', 'ON', 'm5t1z3', TRUE);

INSERT INTO reservations (start_date, end_date, guest_id, property_id)
VALUES ('2020-01-01', '2020-02-02', 1, 2),
VALUES ('2020-01-01', '2020-02-02', 2, 3),
VALUES ('2020-01-01', '2020-02-02', 3, 1);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 2, 1, 5, 'message'),
VALUES (2, 3, 1, 9, 'message'),
VALUES (3, 1, 3, 8, 'message');
