class RegionController < ApplicationController

  def index
    @region = Region.all
    render('regions/index.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    if @region.valid?
      render('regions/success.html.erb')
    else
      render('regions/new.html.erb')
    end
  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(params[:region])
      render('regions/success.html.erb')
    else
      render('regions/edit.html.erb')
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    render('regions/destroy.html.erb')
  end

end
