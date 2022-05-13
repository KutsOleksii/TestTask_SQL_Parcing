# MySQL test

Estimated time: 1 hour

1. Restore 5 tables from the backup file (db01-2022_04_24_17_44_44-dump.sql.zip) on your local MySQL Server (of course it should be already installed)

2. You need to create 3 a bit different queries, but all of them need to select 5 fields: product_name gift_name, product_img_url, product_url, product_price_min, and product_short_description.
3. The first query has to return all products connected with the sub_category “Jewelry”.
4. The second query has to return all products connected with the keyword “Hair accessor”.
5. The third query has to return all products connected either with sub_categories “Beauty & Personal Care” and “Skincare” or with the keyword “Aromatherapy”.
6. In all these queries, we want to see only products which are not sold out yet.

# Ruby test
Estimated time: 1 hour

1. Please don’t use Selenium Web Driver, Ferrum, or other connectors to any headless browser. Use only one of such gems as Net/HTTP, Faraday, Mechanize, and so on.
2. Go to https://agriculture.house.gov/news/documentsingle.aspx?DocumentID=2106
3. Parse the webpage to a hash like the following:

 {

   :title => “Chairman Scott Applauds Passage of Budget Reconciliation Language”,

   :date => “2021-02-11”,

   :location => “Washington”,

   :article => “Today, House Agriculture Committee Chairman David Scott of Georgia expressed his support for the passage of the Agriculture and Nutrition title of the FY2021 Budget Reconciliation package out of the House Agriculture Committee last night following mark-up of the language.

   \”I am pleased that these very important provisions have been passed through the Committee, and I thank the Committee Members for their hard work during yesterday’s mark-up,\” said Chairman Scott. \”As I mentioned in my opening remarks yesterday, the COVID-19 pandemic is unlike anything the world has ever seen. It has affected every American and we must do what it takes to get the spread under control. The passage of the Agriculture Committee’s provisions gets us one step closer to feeding the hungry, supplying COVID-19 vaccinations to our rural communities, seeking equitable solutions for Black farmers and other farmers of color, and supporting our food and ag sector supply chains. I look forward to seeing the final passage of the full bill on the House floor soon.\””

 \}
