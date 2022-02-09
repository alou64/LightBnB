SELECT id, title, cost_per_night, pr.average_rating
FROM properties
LEFT JOIN
  (SELECT property_id, avg(rating) AS average_rating
  FROM property_reviews
  GROUP BY property_id
  HAVING avg(rating) >= 4) AS pr
ON pr.property_id = properties.id
WHERE city = 'Vancouver'
ORDER BY cost_per_night DESC
LIMIT 10;

-- SELECT properties.id, properties.title, properties.cost_per_night, avg(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;
