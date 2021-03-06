class ItemsController < ApplicationController

 def index
  @items=current_user.items.all
  
 end
 def new
    @item = current_user.items.build
 end
 def create
   @item = current_user.items.build(params[:item])
   if @item.save
       @status=current_status
         if !@status.nil?
            if @status.status=="paypal_success"
              redirect_to items_path
            else
              render :show
            end     
         else
            render :show 
         end
        
   else
      render :new
   end
 end  
 def show
   @status=current_status
    if !@status.nil?
        @status=@status.status
                  
    end
 end
 def edit
   @item=current_user.items.find(params[:id])
 end
 def update
   @item = current_user.items.find(params[:id])
   if @item.update_attributes(params[:item])
       redirect_to items_path
   else
       render :edit
   end
 end
 def destroy
   @item=current_user.items.find(params[:id])
   if @item.destroy
        redirect_to items_path
   else
        render :new
   end
 end
end
