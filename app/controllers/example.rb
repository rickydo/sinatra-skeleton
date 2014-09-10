# example controller routes

# need to show index or all examples
get '/examples' do  
	Example.all 
end

# need to show a specific example
# this may need authentication/session with current_user **
get '/examples/:example_id' do 
	@example = Example.find(params(:example_id))
	erb :'/example/show'
end

# need to add new example, new form 
# **
get '/examples/new' do 
	erb :'example/new'
end

# need to save new example
# **
post '/examples' do 
	Example.create!(field: params[:field])
	redirect '/examples'
end

# need to edit example, edit form
# **
get '/example/:example_id/edit' do 
	@example = Example.find(params[:example_id])
end

# updating db
# **
put '/example/:example_id' do
	@example = Example.find(params[:example_id])
	@example.update_attributes(params[:example])
	redirect '/examples'
end

# need to delete example from db
# **
delete '/example/:example_id' do 
	example = Example.find(params[:example_id])
	example.destroy!
	redirect '/examples'
end
