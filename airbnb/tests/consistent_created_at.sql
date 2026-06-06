select r.listing_id 
from {{ ref('fct_reviews') }} r
join {{ ref('dim_listings_cleansed') }} l
on r.listing_id = l.listing_id and r.review_date < l.created_at