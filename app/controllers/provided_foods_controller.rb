class ProvidedFoodsController < ApplicationController
  layout 'secure'

  # GET /provided_foods
  # GET /provided_foods.xml
  def index
    @provided_foods = ProvidedFood.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @provided_foods }
    end
  end

  # GET /provided_foods/1
  # GET /provided_foods/1.xml
  def show
    @provided_food = ProvidedFood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @provided_food }
    end
  end

  # GET /provided_foods/new
  # GET /provided_foods/new.xml
  def new
    @provided_food = ProvidedFood.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @provided_food }
    end
  end

  # GET /provided_foods/1/edit
  def edit
    @provided_food = ProvidedFood.find(params[:id])
  end

  # POST /provided_foods
  # POST /provided_foods.xml
  def create
    @provided_food = ProvidedFood.new(params[:provided_food])

    respond_to do |format|
      if @provided_food.save
        format.html { redirect_to(@provided_food, :notice => 'ProvidedFood was successfully created.') }
        format.xml  { render :xml => @provided_food, :status => :created, :location => @provided_food }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @provided_food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provided_foods/1
  # PUT /provided_foods/1.xml
  def update
    @provided_food = ProvidedFood.find(params[:id])

    respond_to do |format|
      if @provided_food.update_attributes(params[:provided_food])
        format.html { redirect_to(@provided_food, :notice => 'ProvidedFood was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @provided_food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provided_foods/1
  # DELETE /provided_foods/1.xml
  def destroy
    @provided_food = ProvidedFood.find(params[:id])
    @provided_food.destroy

    respond_to do |format|
      format.html { redirect_to(provided_foods_url) }
      format.xml  { head :ok }
    end
  end
end
