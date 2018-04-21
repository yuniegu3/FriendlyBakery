require "sinatra"
require "sendgrid-ruby"
require_relative "desserts.rb"

include SendGrid


#home page
get '/' do 
	erb :index
end

#contact us page
get '/contactus' do
	erb :contact
end

#contact us page email - user can email me through this email form.
post '/contact' do
	@email = params[:email]
	@context = params[:context]

	from = Email.new(email: @email)
	to = Email.new(email: 'yuniegu3@gmail.com')
	subject = 'Thank you for contacting us!'
	content = Content.new(type: 'text/plain', value: @context)
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	
	redirect '/'
end

#main page subscribe form - user can put in their email to recieve email from me. 
#can possibly change @subscription to something like a catalog
post '/subscription' do

	@email = params[:email]
	@subscription = "Thank you for subscribing. You can expect product catalogs and exclusive deals to be emailed to you."
	from = Email.new(email: 'yuniegu3@gmail.com')
	to = Email.new(email: @email)
	subject = 'Thank you for your interest!'
	content = Content.new(type: 'text/plain', value: @subscription)
	mail = Mail.new(from, subject, to, content)


	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	
	redirect '/'
end


# could probably set up the @my_cakes array so that it can be used with .each to loop through for html context rendering.
get '/cakes' do
	@angel = Cake.new("Angel Cake", 25, "Angel food cake, or angel cake, is a type of sponge cake made with egg whites, flour, and sugar. A whipping agent, such as cream of tartar, is commonly added. It differs from other cakes because it uses no butter.", "../images/angelcake.jpg")
	@red_velvet = Cake.new("Red Velvet Cake", 30, "Red velvet cake is traditionally a red, red-brown, or 'mahogany' or 'maroon' colored chocolate layer cake, layered with white cream cheese or ermine icing. The cake is commonly served on Christmas or Valentine's Day.", "../images/redvelvetcake.jpg")
	@cheese = Cake.new("Cheese Cake", 30, "Cheesecake is a sweet dessert consisting of one or more layers. The main, and thickest layer, consists of a mixture of soft, fresh cheese, eggs, vanilla and sugar.", "../images/cheesecake.jpg")
		#@my_cakes = [@angel, @red_velvet, @cheese]

	erb :cakes
end


get '/muffins' do
	@blueberry = Muffin.new("Blueberry Muffin", 7, "Blueberry Muffin makes good breakfast", "../images/blueberrymuff.jpg")
	@chocolate = Muffin.new("Chocolate Muffin", 5, "These rich and tender chocolate muffins make a perfect breakfast treat. ", "../images/cupcake2.jpg")
	@banana = Muffin.new("Banana Muffin", 5, "Try our moist and tasty Banana Muffin.", "../images/bananamuff.jpg")
	# @my_muffins = [@blueberry, @chocolate, @banana]

	erb :muffins
end

get '/cookies' do

	@chocolate_chip = Cookie.new("Chocolate Chip Cookie", 3, "Try our daily baked fresh chocolate chip cookies.", "../images/cookies.jpg")
	@oatmeal = Cookie.new("Oatmeal Cookie", 2, "A soft oatmeal cookie right out of the oven is a tasty treat that can also be nutritious. That's right! Our oatmeal cookie does supply a good dose of certain nutrients and it is always made fresh every day!", "../images/oatmealcookie.jpg")
	@peanut_butter = Cookie.new("PB Cookie", 3, "Our peanut butter cookies are baked daily for freshness, just like our other cookies. You can enjoy the soft center along with slightly cripsy crust on the outter edge.", "../images/pbcookie.jpg")
	# @my_cookies = [@chocolate_chip, @oatmeal, @peanut_butter]
	erb :cookies
end

