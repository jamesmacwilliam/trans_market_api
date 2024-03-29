class UserAddressesController < ApplicationController
  # GET /user_addresses
  # GET /user_addresses.xml
  def index
    @user_addresses = UserAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_addresses }
    end
  end

  # GET /user_addresses/1
  # GET /user_addresses/1.xml
  def show
    @user_address = UserAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_address }
    end
  end

  # GET /user_addresses/new
  # GET /user_addresses/new.xml
  def new
    @user_address = UserAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_address }
    end
  end

  # GET /user_addresses/1/edit
  def edit
    @user_address = UserAddress.find(params[:id])
  end

  # POST /user_addresses
  # POST /user_addresses.xml
  def create
    @user_address = UserAddress.new(params[:user_address])

    respond_to do |format|
      if @user_address.save
        format.html { redirect_to(@user_address, :notice => 'User address was successfully created.') }
        format.xml  { render :xml => @user_address, :status => :created, :location => @user_address }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_addresses/1
  # PUT /user_addresses/1.xml
  def update
    @user_address = UserAddress.find(params[:id])

    respond_to do |format|
      if @user_address.update_attributes(params[:user_address])
        format.html { redirect_to(@user_address, :notice => 'User address was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_addresses/1
  # DELETE /user_addresses/1.xml
  def destroy
    @user_address = UserAddress.find(params[:id])
    @user_address.destroy

    respond_to do |format|
      format.html { redirect_to(user_addresses_url) }
      format.xml  { head :ok }
    end
  end
end
