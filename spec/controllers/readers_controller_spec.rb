require 'spec_helper'

describe ReadersController do

  let!(:reader) {mock_model("Reader").as_new_record}
  before :each do 
    Reader.stub(:new).and_return(reader)
    get :new
  end

  describe "Get new" do
    it "renders new template" do
      expect(response).to render_template(:new)
    end

    it "assigns @reader variable to the view" do
      expect(assigns[:reader]).to eq(reader)
    end
  end
end