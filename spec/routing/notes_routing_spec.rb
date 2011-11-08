require "spec_helper"

describe NotesController do
  describe "routing" do

    it "routes to #content" do
      get("/notes/content").should route_to("notes#content")
    end

    it "routes to #create" do
      post("/books/1/notes").should route_to("notes#create", :book_id => "1")
    end

    it "routes to #update" do
      put("/notes/update").should route_to("notes#update")
    end

    it "routes to #destroy" do
      delete("/notes/1").should route_to("notes#destroy", :id => "1")
    end

  end
end
