require 'pry'
require 'sinatra'



# GET

get '/' do
  erb :index
end

get '/ask' do
  erb :ask
end

get '/add' do
  erb :add
end

get '/reset' do
  erb :reset
end

get '/ask' do
  erb :ask
end

get '/answer' do
  erb :answer
end


# POST

post '/ask' do

@question = params[:question]
$answers = ['YES!', 'Not likely...', 'Are you kidding?', 'BOOM!!']

$new_answers = $answers.clone
@simple = $answers.sample

@clever = $new_answers.sample

 erb :ask
end

#post '/answer' do
#  if @new_answers.nil?
#    puts "\nMagic eight ball says: #{$answers.sample}"
#  else
#    puts "\nMagic eight ball says: #{$new_answers.sample}"
#  end

#erb :answer
#end

post '/add' do

$new_answers = $answers.clone
$adding = params[:adding]
$new_answers << $adding

  erb :add
end



