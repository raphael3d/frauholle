require 'spec_helper'

describe ListesController do

  def mock_liste(stubs={})
    (@mock_liste ||= mock_model(Liste).as_null_object).tap do |liste|
      liste.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all listes as @listes" do
      Liste.stub(:all) { [mock_liste] }
      get :index
      assigns(:listes).should eq([mock_liste])
    end
  end

  describe "GET show" do
    it "assigns the requested liste as @liste" do
      Liste.stub(:find).with("37") { mock_liste }
      get :show, :id => "37"
      assigns(:liste).should be(mock_liste)
    end
  end

  describe "GET new" do
    it "assigns a new liste as @liste" do
      Liste.stub(:new) { mock_liste }
      get :new
      assigns(:liste).should be(mock_liste)
    end
  end

  describe "GET edit" do
    it "assigns the requested liste as @liste" do
      Liste.stub(:find).with("37") { mock_liste }
      get :edit, :id => "37"
      assigns(:liste).should be(mock_liste)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created liste as @liste" do
        Liste.stub(:new).with({'these' => 'params'}) { mock_liste(:save => true) }
        post :create, :liste => {'these' => 'params'}
        assigns(:liste).should be(mock_liste)
      end

      it "redirects to the created liste" do
        Liste.stub(:new) { mock_liste(:save => true) }
        post :create, :liste => {}
        response.should redirect_to(liste_url(mock_liste))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved liste as @liste" do
        Liste.stub(:new).with({'these' => 'params'}) { mock_liste(:save => false) }
        post :create, :liste => {'these' => 'params'}
        assigns(:liste).should be(mock_liste)
      end

      it "re-renders the 'new' template" do
        Liste.stub(:new) { mock_liste(:save => false) }
        post :create, :liste => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested liste" do
        Liste.should_receive(:find).with("37") { mock_liste }
        mock_liste.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :liste => {'these' => 'params'}
      end

      it "assigns the requested liste as @liste" do
        Liste.stub(:find) { mock_liste(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:liste).should be(mock_liste)
      end

      it "redirects to the liste" do
        Liste.stub(:find) { mock_liste(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(liste_url(mock_liste))
      end
    end

    describe "with invalid params" do
      it "assigns the liste as @liste" do
        Liste.stub(:find) { mock_liste(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:liste).should be(mock_liste)
      end

      it "re-renders the 'edit' template" do
        Liste.stub(:find) { mock_liste(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested liste" do
      Liste.should_receive(:find).with("37") { mock_liste }
      mock_liste.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the listes list" do
      Liste.stub(:find) { mock_liste }
      delete :destroy, :id => "1"
      response.should redirect_to(listes_url)
    end
  end

end
