class CustomFoodsController < ApplicationController
  layout 'secure'

  # GET /custom_foods
  # GET /custom_foods.xml
  def index
    @custom_foods = CustomFood.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custom_foods }
    end
  end

  # GET /custom_foods/1
  # GET /custom_foods/1.xml
  def show
    @custom_food = CustomFood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_food }
    end
  end

  # GET /custom_foods/new
  # GET /custom_foods/new.xml
  def new
    @custom_food = CustomFood.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_food }
    end
  end

  # GET /custom_foods/1/edit
  def edit
    @custom_food = CustomFood.find(params[:id])
  end

  # POST /custom_foods
  # POST /custom_foods.xml
  def create
    @custom_food = CustomFood.new(params[:custom_food])

    respond_to do |format|
      if @custom_food.save
        format.html { redirect_to(@custom_food, :notice => 'CustomFood was successfully created.') }
        format.xml  { render :xml => @custom_food, :status => :created, :location => @custom_food }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_foods/1
  # PUT /custom_foods/1.xml
  def update
    @custom_food = CustomFood.find(params[:id])

    respond_to do |format|
      if @custom_food.update_attributes(params[:custom_food])
        format.html { redirect_to(@custom_food, :notice => 'CustomFood was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_foods/1
  # DELETE /custom_foods/1.xml
  def destroy
    @custom_food = CustomFood.find(params[:id])
    @custom_food.destroy

    respond_to do |format|
      format.html { redirect_to(custom_foods_url) }
      format.xml  { head :ok }
    end
  end
end
