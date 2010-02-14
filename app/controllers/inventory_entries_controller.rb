class InventoryEntriesController < ApplicationController
  # GET /inventory_entries
  # GET /inventory_entries.xml
  def index
    @inventory_entries = InventoryEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory_entries }
    end
  end

  # GET /inventory_entries/1
  # GET /inventory_entries/1.xml
  def show
    @inventory_entry = InventoryEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventory_entry }
    end
  end

  # GET /inventory_entries/new
  # GET /inventory_entries/new.xml
  def new
    @inventory_entry = InventoryEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inventory_entry }
    end
  end

  # GET /inventory_entries/1/edit
  def edit
    @inventory_entry = InventoryEntry.find(params[:id])
  end

  # POST /inventory_entries
  # POST /inventory_entries.xml
  def create
    @inventory_entry = InventoryEntry.new(params[:inventory_entry])

    respond_to do |format|
      if @inventory_entry.save
        format.html { redirect_to(@inventory_entry, :notice => 'InventoryEntry was successfully created.') }
        format.xml  { render :xml => @inventory_entry, :status => :created, :location => @inventory_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inventory_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_entries/1
  # PUT /inventory_entries/1.xml
  def update
    @inventory_entry = InventoryEntry.find(params[:id])

    respond_to do |format|
      if @inventory_entry.update_attributes(params[:inventory_entry])
        format.html { redirect_to(@inventory_entry, :notice => 'InventoryEntry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inventory_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_entries/1
  # DELETE /inventory_entries/1.xml
  def destroy
    @inventory_entry = InventoryEntry.find(params[:id])
    @inventory_entry.destroy

    respond_to do |format|
      format.html { redirect_to(inventory_entries_url) }
      format.xml  { head :ok }
    end
  end
end
