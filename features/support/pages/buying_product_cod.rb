class Buy
include PageObject

page_url 'http://www.williams-sonoma.com/'


a :cutlery,				 	:class => 'topnav-cutlery'
a :knife_sets, 			 	:xpath => '//*[@id="topnav-container"]/ul/li[3]/div/div[1]/ul/li[1]/a'
a :shun_set, 		 	 	:xpath => '//*[@id="subCatListContainer"]/ul/li[2]/a'
a :checkout_btn, 	 	 	:id => 'anchor-btn-checkout'
button :add_to_cart_btn, 	:class => 'btn btn_addtobasket btn_addtobasket_add'
a :continue_shopping, 	 	:class => 'continueShopping'
text_field :search, 		:type => 'text'
a :search_btn, 				:id => 'btnSearch'
img :product_pic, 			:xpath => '//*[@id="content"]/div[3]/ul/li[5]/div[1]/a[1]/span/img'
span :quick_look, 			:xpath => '//*[@id="content"]/div[3]/ul/li[5]/div[1]/a[2]/span'
div :div_overlay, 			:id => 'overlay-content'
span :price, 				:class => 'currency currencyUSD'
span :priceoverlay, 		:class => 'price-amount'
a :product_name,            :xpath => '//*[@id="content"]/div[3]/ul/li[5]/a'
h1 :item_name,              :xpath => '//*[@id="purchasing-container"]/div[2]/div/h1'
h1 :item_title,             :xpath => '//*[@id="pip"]/div[1]/div[6]/div[2]/div[2]/h1'
div :shopping_cart,         :id => 'wrap-cart'

	def finding_product()
		cutlery_element.hover
		knife_sets_element.click
		shun_set_element.click
	end
	
	def check_add_to_cart_btn()
		fail unless add_to_cart_btn_element.present?
	end
	
	def adding_cart()
		add_to_cart_button.click
	end

	def check_cart_overlay()
		fail unless text.include? "You've just added the following to your basket:"
	end

	def check_checkout_btn()
		fail unless add_to_cart_btn_element.present?
	end
	
	def proceeding_checkout
		checkout_btn.click
	end

	def check_shopping_cart
		fail unless text.include? 'shopping cart'
	end
	
	def check_product_added
		item_title.text
		shopping_cart.text.include? item_title.text.should == true
	end

	def search_product
		search_element.click
	end

	def product_set(keyword_product) 
		self.search = keyword_product
		search_btn_element.click
			
	end
	
	def check_search_results
		fail unless text.include? 'Search Results for'
	end

	def looking_for
		product_pic_element.hover
	end

	def check_quick_look
		fail unless quick_look_element.visible?	
	end

	def quick_look_click
		quick_look_element.click
	end
	
	def check_quicklook_overlay
		fail unless div_overlay_element.visible? 
	end

	
end 

=begin
Sorry, but I had some dificulty to check the last acceptance criteria.
my idea is about to create a hash to storage the product's name and price to compare with the shown in the overlay


	def check_product_price
		@myprice = Hash.new
		@myprice = price.text.to_f 
		fail unless priceoverlay.text.to_f.should == @myprice
	end
			hash1 = {

				price1 => price.text.to_f,
				name1  => product_name.text
			}
			end

			hash2 = {

				price2 => priceoverlay.text.to_f
				name2  => item_name.text
			}

			end
			fail unless hash1 == hash2
=end