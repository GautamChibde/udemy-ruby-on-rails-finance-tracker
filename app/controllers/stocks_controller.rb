class StocksController < ApplicationController

    def search
        if params[:stock].blank?
            flash.now[:danger] = "Empty search"
        else
            @stock = Stock.new_form_lookup(params[:stock])
            flash.now[:danger] = "Stock not found" unless @stock
        end
        render partial: 'users/results'
    end
end