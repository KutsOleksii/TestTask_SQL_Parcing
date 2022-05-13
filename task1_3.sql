select product_name, product_img_url, product_url, product_price_min, product_short_description 
from grommet_products
where id in 
(
	select product_id from grommet_product_categories inner join grommet_gifts_categories 
	on  grommet_product_categories.product_category_id = grommet_gifts_categories.id
	where grommet_gifts_categories.sub_category in ('Beauty & Personal Care', 'Skincare')
)
and
not (grommet_products.is_sold_out)
union 
select product_name, product_img_url, product_url, product_price_min, product_short_description 
from grommet_products
where id in 
(
	select product_id from grommet_product_to_keyword inner join grommet_product_keywords 
	on  grommet_product_to_keyword.keyword_id = grommet_product_keywords.id
	where keyword = 'Aromatherapy'
)
and
not (grommet_products.is_sold_out)
