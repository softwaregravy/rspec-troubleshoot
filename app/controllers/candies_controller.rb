class CandiesController < ApplicationController
  # GET /candies
  # GET /candies.xml
  def index
    @candies = Candy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @candies }
    end
  end

  # GET /candies/1
  # GET /candies/1.xml
  def show
    @candy = Candy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @candy }
    end
  end

  # GET /candies/new
  # GET /candies/new.xml
  def new
    @candy = Candy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @candy }
    end
  end

  # GET /candies/1/edit
  def edit
    @candy = Candy.find(params[:id])
  end

  # POST /candies
  # POST /candies.xml
  def create
    @candy = Candy.new(params[:candy])

    respond_to do |format|
      if @candy.save
        format.html { redirect_to(@candy, :notice => 'Candy was successfully created.') }
        format.xml  { render :xml => @candy, :status => :created, :location => @candy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @candy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /candies/1
  # PUT /candies/1.xml
  def update
    @candy = Candy.find(params[:id])

    respond_to do |format|
      if @candy.update_attributes(params[:candy])
        format.html { redirect_to(@candy, :notice => 'Candy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @candy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /candies/1
  # DELETE /candies/1.xml
  def destroy
    @candy = Candy.find(params[:id])
    @candy.destroy

    respond_to do |format|
      format.html { redirect_to(candies_url) }
      format.xml  { head :ok }
    end
  end
end
