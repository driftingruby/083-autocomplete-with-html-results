module Autocomplete
  class Products < ApplicationAutocomplete

    private 

    def result_partial(product)
      ApplicationController.new.render_to_string(partial: 'products/autocomplete', 
                                                 locals: { product: product }).html_safe
    end

    def result_value(product)
      product.name
    end

    def results
      @results ||= Product.where('NAME LIKE :query', query: "%#{params[:term]}%").limit(5)
    end

  end
end