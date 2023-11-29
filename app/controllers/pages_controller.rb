class PagesController < ApplicationController
    def index
        assoc = MenuCategory.includes(:menu_items)
        @variable = assoc.pluck(:title, :description)
        @menu = MenuItem.all
    end

    def promotions 
        @promos = ["tastemakers", "thanksgiving", "holiday lunch booking special", "our classic menu"]
    end
end
