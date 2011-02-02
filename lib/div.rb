module Div
  module ClassMethods
    # Render the given partial in a 'div' element with its 'id' set
    # to the name of the partial.
    #
    # If called with ``:reuse => true'' will instead set the 'div's
    # class to the name of the partial.
    #
    # Directory separators inside the partial path will be replaced
    # by underscores '_'.
    #
    # See the README of the 'div' plugin for examples.
    #
    def div(partial, options = {})
      id_and_class = partial.sub(/^#{File::SEPARATOR}/,'').gsub(File::SEPARATOR,'_')
      id_and_class_attr = ( options[:reuse] ? "class" : "id" ) + "='#{id_and_class}'"
      options.delete :reuse
      render_div id_and_class_attr, options.merge( :partial => partial )
    end
  
    private
    def render_div(id_and_class_attr, options)
      render :partial => "div/div", :locals => { :id_and_class_attr => id_and_class_attr, :options => options}
    end
  end
end 
