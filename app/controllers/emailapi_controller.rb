class EmailapiController < ApplicationController

	def index
	end

	def subscribe

		@list_id = "3a35672a90"
		gb = Gibbon::API.new

		gb.lists.subscribe({
			:id => @list_id,
			:email => {:email => params[:email][:address]}
			})
	end

	def subscribe
		NotificationMailer.email_name.deliver
	end
	# gb.campaigns.create({type: "regular", 
	# 		options: {list_id: list_id, 
	# 		subject: "Gibbon is cool", 
	# 		from_email: "4caad4lyfe@gmail.com", 
	# 		from_name: "Darth Vader", 
	# 		generate_text: true}, 
	# 		content: {html: "<html><head></head><body><h1>Foo</h1><p>Bar</p></body></html>"}})

end
