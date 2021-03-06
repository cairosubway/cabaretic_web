class CabareticpagesController < ApplicationController
  # GET /cabareticpages
  # GET /cabareticpages.json
  def index
    @cabareticpages = Cabareticpage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cabareticpages }
    end
  end

  # GET /cabareticpages/1
  # GET /cabareticpages/1.json
  def show
    @cabareticpage = Cabareticpage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cabareticpage }
    end
  end

  # GET /cabareticpages/new
  # GET /cabareticpages/new.json
  def new
    @cabareticpage = Cabareticpage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cabareticpage }
    end
  end

  # GET /cabareticpages/1/edit
  def edit
    @cabareticpage = Cabareticpage.find(params[:id])
  end

  # POST /cabareticpages
  # POST /cabareticpages.json
  def create
    @cabareticpage = Cabareticpage.new(params[:cabareticpage])

    respond_to do |format|
      if @cabareticpage.save
        format.html { redirect_to @cabareticpage, notice: 'Cabareticpage was successfully created.' }
        format.json { render json: @cabareticpage, status: :created, location: @cabareticpage }
      else
        format.html { render action: "new" }
        format.json { render json: @cabareticpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cabareticpages/1
  # PUT /cabareticpages/1.json
  def update
    @cabareticpage = Cabareticpage.find(params[:id])

    respond_to do |format|
      if @cabareticpage.update_attributes(params[:cabareticpage])
        format.html { redirect_to @cabareticpage, notice: 'Cabareticpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cabareticpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabareticpages/1
  # DELETE /cabareticpages/1.json
  def destroy
    @cabareticpage = Cabareticpage.find(params[:id])
    @cabareticpage.destroy

    respond_to do |format|
      format.html { redirect_to cabareticpages_url }
      format.json { head :no_content }
    end
  end
end
