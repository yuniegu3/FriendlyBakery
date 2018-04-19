

# classes for muffins, cookies, cake.

#JUST a thought.

# could possibly have a bakery class that has 3 empty arrays for cake,muffin and cookie with add function to add the objects into
#each array according to type. 
# could possibly use the bakery array to render html?


class Muffin
	attr_accessor :price, :info, :name, :pic
	def initialize(name,price,info,pic)
		@name = name
		@price = price
		@info = info
		@pic = pic
	end
end

# blueberry = Muffin.new("Blueberry Muffin", 7, "Blueberry Muffin info")
# chocolate = Muffin.new("Chocolate Muffin", 5, "Chocolate Muffin info")
# banana = Muffin.new("Banana Muffin", 5, "Banana Muffin info")

class Cookie
	attr_accessor :price, :info, :name, :pic
	def initialize(name,price,info,pic)
		@name = name
		@price = price
		@info = info
		@pic = pic
	end
end

# chocolate_chip = Cookie.new("Chocolate Chip Cookie", 3, "Chocolate Chip Cookie info")
# oatmeal = Cookie.new("Oatmeal Cookie", 2, "Oatmeal Cookie Info")
# peanut_butter = Cookie.new("PB Cookie", 3, "PB Cookie info")



class Cake
	attr_accessor :price, :info, :name, :pic
	def initialize(name,price,info,pic)
		@name = name
		@price = price
		@info = info
		@pic = pic
	end
end



# blueberry = Muffin.new("Blueberry Muffin", 7, "Blueberry Muffin info")
# chocolate = Muffin.new("Chocolate Muffin", 5, "Chocolate Muffin info")
# banana = Muffin.new("Banana Muffin", 5, "Banana Muffin info")
# chocolate_chip = Cookie.new("Chocolate Chip Cookie", 3, "Chocolate Chip Cookie info")
# oatmeal = Cookie.new("Oatmeal Cookie", 2, "Oatmeal Cookie Info")
# peanut_butter = Cookie.new("PB Cookie", 3, "PB Cookie info")
# angel = Cake.new("Angel Cake", 25, "Angle Cake info")
# red_velvet = Cake.new("Red Velvet Cake", 30, "Red Velvet cake info")
# cheese = Cake.new("Cheese Cake", 30, "Cheese cake info")




#could possibly group this into "dessert" and list types of class to cookies,cakes,muffins instead of having classes for all 3




# class Bakery
# 	attr_accessor :price, :info, :name, :pic, :type
# 	def initialize(name,price,info,pic,type)
# 		@name = name
# 		@price = price
# 		@info = info
# 		@pic = pic
# 		@type = type
# 	end
# end









