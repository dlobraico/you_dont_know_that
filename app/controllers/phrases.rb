YouDontKnowThat.controllers :phrases do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end
    
  get :show, :map => "/" do
      @phrase = Phrase.first(:offset => rand(Phrase.count))
      render 'phrases/show'
  end

  get :show, :map => "/:id" do
      @phrase = Phrase.get(params[:id])
      render 'phrases/show'
  end

end
