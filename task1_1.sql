select product_name, product_img_url, product_url, product_price_min, product_short_description 
from grommet_products
where id in 
(
	select product_id from grommet_product_categories inner join grommet_gifts_categories 
	on  grommet_product_categories.product_category_id = grommet_gifts_categories.id
	where grommet_gifts_categories.sub_category = 'jewelry'
)
and
not (grommet_products.is_sold_out)
order by cast(product_price_min as decimal(2))

