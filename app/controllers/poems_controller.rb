class PoemsController < ApplicationController

def index

    @poems = Poem.all.order("created_at DESC")
    
end

def new

    @poem = Poem.new
end

def create
    @poem = Poem.new(poem_params)

    if @poem.save
        redirect_to poems_path
    else
        render 'new'
    end


end

def show

    @poem=Poem.find(params[:id])



end

def update
    @poem= Poem.find(params[:id])

    if @poem.update(poem_params)
        redirect_to @poem
    else
        render 'edit'
    end

end

def edit
    @poem= Poem.find(params[:id])
end

def destroy
    @poem= Poem.find(params[:id])
    @poem.destroy

    redirect_to poems_path
end



end



private 

def poem_params
 
    params.require(:poem).permit(:title,:body)
end