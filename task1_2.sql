select product_name, product_img_url, product_url, product_price_min, product_short_description 
from grommet_products 
where id in 
(
	select product_id from grommet_product_to_keyword inner join grommet_product_keywords 
	on  grommet_product_to_keyword.keyword_id = grommet_product_keywords.id
	where keyword = 'Hair accessor'
)
and
not (grommet_products.is_sold_out)

