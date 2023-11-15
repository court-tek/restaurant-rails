class PagesController < ApplicationController
    def promotions 
        @promos = ["tastemakers", "thanksgiving", "holiday lunch booking special", "our classic menu"]
    end
end
