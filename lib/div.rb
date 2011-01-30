module Div
  module ClassMethods
    # Render the given partial in a 'div' element with its 'id' set
    # to the name of the partial.
    #
    # If called with ``:reuse => true'' will instead set the 'div's
    # class to the name of the partial.
    #
    # See the README of the 'div' plugin for examples.
    #
    def div(partial, options = {})
      id_and_class = ( options[:reuse] ? "class" : "id" ) + "='#{partial}'"
      options.delete :reuse
      render_div id_and_class, options.merge( :partial => partial )
    end
  
    private
    def render_div(id_and_class, options)
      render :partial => "div/div", :locals => { :id_and_class => id_and_class, :options => options}
    end
  end
end 
