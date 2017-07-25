class PicturesController < ApplicationController
  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    
    p= Photo.new
    
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    
    p.save

    @current_count = Photo.count

    render("pic_templates/create_row.html.erb")
  end

  def index
    
    @pic = Photo.all
    
    render("pic_templates/index.html.erb")
  end

  def show
    # Here are the Parameters: {"an_id"=> "5"}
    
    @pic = Photo.find(params["an_id"])
    
    render("pic_templates/show.html.erb")
  end

  def edit_form
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    render("pic_templates/update_row.html.erb")
  end

  def destroy_row
    render("pic_templates/destroy_row.html.erb")
  end
end
