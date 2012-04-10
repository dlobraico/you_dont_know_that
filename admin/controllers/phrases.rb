Admin.controllers :phrases do

  get :index do
    @phrases = Phrase.all
    render 'phrases/index'
  end

  get :new do
    @phrase = Phrase.new
    render 'phrases/new'
  end

  post :create do
    @phrase = Phrase.new(params[:phrase])
    if @phrase.save
      flash[:notice] = 'Phrase was successfully created.'
      redirect url(:phrases, :edit, :id => @phrase.id)
    else
      render 'phrases/new'
    end
  end

  get :edit, :with => :id do
    @phrase = Phrase.get(params[:id])
    render 'phrases/edit'
  end

  put :update, :with => :id do
    @phrase = Phrase.get(params[:id])
    if @phrase.update(params[:phrase])
      flash[:notice] = 'Phrase was successfully updated.'
      redirect url(:phrases, :edit, :id => @phrase.id)
    else
      render 'phrases/edit'
    end
  end

  delete :destroy, :with => :id do
    phrase = Phrase.get(params[:id])
    if phrase.destroy
      flash[:notice] = 'Phrase was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Phrase!'
    end
    redirect url(:phrases, :index)
  end
end
