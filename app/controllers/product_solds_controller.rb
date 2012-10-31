class ProductSoldsController < ApplicationController
  # GET /product_solds
  # GET /product_solds.json
  def index
    #@product_solds = ProductSold.paginate(page: params[:page]).search(params)
    @product_solds = ProductSold.paginate(page: params[:page])
  end

  # GET /product_solds/1
  # GET /product_solds/1.json
  def show
    @product_sold = ProductSold.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_sold }
    end
  end

  # GET /product_solds/new
  # GET /product_solds/new.json
  def new
    print params
    @product_sold = ProductSold.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_sold }
    end
  end

  # GET /product_solds/1/edit
  def edit
    @product_sold = ProductSold.find(params[:id])
  end

  # POST /product_solds
  # POST /product_solds.json
  def create
    @product_sold = ProductSold.new(params[:product_sold])

    respond_to do |format|
      if @product_sold.save
        format.html { redirect_to @product_sold, notice: 'Product sold was successfully created.' }
        format.json { render json: @product_sold, status: :created, location: @product_sold }
      else
        format.html { render action: "new" }
        format.json { render json: @product_sold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_solds/1
  # PUT /product_solds/1.json
  def update
    @product_sold = ProductSold.find(params[:id])

    respond_to do |format|
      if @product_sold.update_attributes(params[:product_sold])
        format.html { redirect_to @product_sold, notice: 'Product sold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_sold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_solds/1
  # DELETE /product_solds/1.json
  def destroy
    @product_sold = ProductSold.find(params[:id])
    @product_sold.destroy

    respond_to do |format|
      format.html { redirect_to product_solds_url }
      format.json { head :no_content }
    end
  end
end
