class Job < ApplicationRecord

    def self.zipcode(params)
        if params[:zipcode].present?
            where("zipcode = ?", params[:zipcode])
        else
            job = all
        end
    end

    def self.price(params)  
        if params[:price].present?
            where("price >= ?", params[:price])
        else   
            job = all
        end
    end

end
