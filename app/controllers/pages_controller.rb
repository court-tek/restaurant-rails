class PagesController < ApplicationController
    def index
        @menu_categories = MenuCategory.all
    end

    def promotions 
        @promos = ["tastemakers", "thanksgiving", "holiday lunch booking special", "our classic menu"]
    end
end
