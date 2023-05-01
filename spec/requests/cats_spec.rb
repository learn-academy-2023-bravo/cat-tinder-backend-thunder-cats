require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
     it "gets a list of cats" do
      Cat.create(
         name:"Nermal",
        age:5,
        breed:"Tabby",
        hobbies:"Being emotionally dependent on other cats",
        image:"https://www.istockphoto.com/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised-gm1361394182-433852083?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"
    )

    get '/cats'

    cat= JSON.parse(response.body)
    expect(response).to have_http_status(200)
    expect(cat.length).to eq 1
     end
  end

   describe "POST/create" do
    it "create a cat" do
      cat_params = {
        cat: {
          name:"Nermal",
          age:5,
          breed:"Tabby",
          hobbies:"Being emotionally dependent on other cats",
          image:"https://www.istockphoto.com/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised-gm1361394182-433852083?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"

        }
      }
    
      post '/cats', params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first
      expect(cat.name).to eq "Nermal"
   end
  end
 

  describe "PATCH/update" do
    it "updates existing cat" do
      cat_params = {
        cat: {
          name:"Nermal",
          age:5,
          breed:"Tabby",
          hobbies:"Being emotionally dependent on other cats",
          image:"https://www.istockphoto.com/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised-gm1361394182-433852083?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcats&utm_term=cats%3A%3A%3A"
        }
      }

      # post :create, cat_params
      @update = Cat.first 
      update_params = {
          cat:{
          name: "newnew",
          age:3,
          breed:"siamese",
          hobbies:"smoking catnip",
          image:"https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__340.jpg"
        }
      }
     patch :update, params: { id: @update.id, cat: updated_params[:cat]}
     expect(response).to have_http_status(200)

     
    end
  end






end
  
