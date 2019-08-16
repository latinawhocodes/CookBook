class CardsController < ApplicationController 

    get '/cards' do 
        if !logged_in? 
            redirect '/login'
        else     
            @cards = Card.all
            @user = User.find_by_id(session[:user_id])
            erb :'/cards/cards'
        end 
    end 

   get '/cards/new' do 
        if !logged_in?
            redirect '/login'
        else
            erb :'/cards/new'
        end 
    end 

    post '/cards' do 
        if params[:title] == "" || params[:content] == ""
            redirect '/cards/new'
        else
            @card = Card.create(:title => params[:title], :content => params[:content], :user_id => session[:user_id])
            @card.user_id = session[:user_id]
            @card.save
            redirect "/cards/#{@card.id}"
        end 
    end 

    get '/cards/:id' do 
        if !logged_in?
            redirect '/login'
        else
            @card = Card.find_by_id(params[:id])
            @user = User.find_by_id(params[:id])
            erb :'/cards/show'
        end 
    end 

    get '/cards/:id/edit' do 
        if logged_in?
            @card = Card.find_by_id(params[:id])
            if current_user.id == @card.user_id
                erb :'/cards/edit'
            else 
                redirect '/cards'
            end 
        else
            redirect '/login'
        end 
    end 

    patch '/cards/:id' do 
        if params[:title] == "" || params[:content] == ""
            redirect '/cards/#{params[:id]}/edit'
        else
            @card = Card.find_by_id(params[:id])
            @card.title = params[:title]
            @card.content = params[:content]
            @card.save 
            redirect '/cards'
        end 
    end 

    delete '/cards/:id/delete' do 
        if logged_in?
            @card = Card.find_by_id(params[:id])
            if self.current_user.id == @card.user_id
                @card.delete
                redirect '/cards'
            else 
                redirect '/cards'
            end 
        else
            redirect '/login'
        end 
    end 

end 