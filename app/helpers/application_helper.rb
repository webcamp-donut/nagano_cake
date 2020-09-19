module ApplicationHelper
	# 商品詳細画面、注文確認画面表示用
	def include_tax(price)
  		price * 1.08
  	end
end
