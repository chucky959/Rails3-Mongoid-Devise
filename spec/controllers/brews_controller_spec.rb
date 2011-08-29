require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BrewsController do

  # This should return the minimal set of attributes required to create a valid
  # Brew. As you add validations to Brew, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all brews as @brews" do
      brew = Brew.create! valid_attributes
      get :index
      assigns(:brews).should eq([brew])
    end
  end

  describe "GET show" do
    it "assigns the requested brew as @brew" do
      brew = Brew.create! valid_attributes
      get :show, :id => brew.id.to_s
      assigns(:brew).should eq(brew)
    end
  end

  describe "GET new" do
    it "assigns a new brew as @brew" do
      get :new
      assigns(:brew).should be_a_new(Brew)
    end
  end

  describe "GET edit" do
    it "assigns the requested brew as @brew" do
      brew = Brew.create! valid_attributes
      get :edit, :id => brew.id.to_s
      assigns(:brew).should eq(brew)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Brew" do
        expect {
          post :create, :brew => valid_attributes
        }.to change(Brew, :count).by(1)
      end

      it "assigns a newly created brew as @brew" do
        post :create, :brew => valid_attributes
        assigns(:brew).should be_a(Brew)
        assigns(:brew).should be_persisted
      end

      it "redirects to the created brew" do
        post :create, :brew => valid_attributes
        response.should redirect_to(Brew.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved brew as @brew" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brew.any_instance.stub(:save).and_return(false)
        post :create, :brew => {}
        assigns(:brew).should be_a_new(Brew)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brew.any_instance.stub(:save).and_return(false)
        post :create, :brew => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested brew" do
        brew = Brew.create! valid_attributes
        # Assuming there are no other brews in the database, this
        # specifies that the Brew created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Brew.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => brew.id, :brew => {'these' => 'params'}
      end

      it "assigns the requested brew as @brew" do
        brew = Brew.create! valid_attributes
        put :update, :id => brew.id, :brew => valid_attributes
        assigns(:brew).should eq(brew)
      end

      it "redirects to the brew" do
        brew = Brew.create! valid_attributes
        put :update, :id => brew.id, :brew => valid_attributes
        response.should redirect_to(brew)
      end
    end

    describe "with invalid params" do
      it "assigns the brew as @brew" do
        brew = Brew.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brew.any_instance.stub(:save).and_return(false)
        put :update, :id => brew.id.to_s, :brew => {}
        assigns(:brew).should eq(brew)
      end

      it "re-renders the 'edit' template" do
        brew = Brew.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brew.any_instance.stub(:save).and_return(false)
        put :update, :id => brew.id.to_s, :brew => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested brew" do
      brew = Brew.create! valid_attributes
      expect {
        delete :destroy, :id => brew.id.to_s
      }.to change(Brew, :count).by(-1)
    end

    it "redirects to the brews list" do
      brew = Brew.create! valid_attributes
      delete :destroy, :id => brew.id.to_s
      response.should redirect_to(brews_url)
    end
  end

end
