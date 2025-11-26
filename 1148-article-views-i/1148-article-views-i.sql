# Write your MySQL query statement below
Select author_id AS id
FROM Views
WHERE author_id = viewer_id
GROUP by author_id
ORDER by author_id ASC