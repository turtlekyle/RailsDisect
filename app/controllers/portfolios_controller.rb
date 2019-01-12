class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_new_item = Portfolio.new
    end

    def create
        @portfoilio_create = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfoilio_create.save
            format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
            format.json { render :show, status: :created, location: @portfoilio_create }
          else
            format.html { render :new }
          end
        end
      end



end
