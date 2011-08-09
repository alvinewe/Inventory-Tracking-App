class LineItemsController < ApplicationController
  
  before_filter :get_order
  
  # GET /line_items
  # GET /line_items.xml
  def index
    @line_items = @order.line_items

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @line_items }
    end
  end

  # GET /line_items/1
  # GET /line_items/1.xml
  def show
    @line_item = @order.line_items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @line_item }
    end
  end

  # GET /line_items/new
  # GET /line_items/new.xml
  def new
    @line_item = @order.line_items.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @line_item }
    end
  end

  # GET /line_items/1/edit
  def edit
    @line_item = @order.line_items.find(params[:id])
  end

  # POST /line_items
  # POST /line_items.xml
  def create
    @line_item = @order.line_items.build(params[:line_item])

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to(order_line_item_path(@order, @line_item), :notice => 'Line item was successfully created.') }
        format.xml  { render :xml => @line_item, :status => :created, :location => @line_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /line_items/1
  # PUT /line_items/1.xml
  def update
    @line_item = @order.line_items.find(params[:id])

    respond_to do |format|
      if @line_item.update_attributes(params[:line_item])
        format.html { redirect_to(order_line_item_path(@order, @line_item), :notice => 'Line item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.xml
  def destroy
    @line_item = @order.line_items.find(params[:id])
    @line_item.destroy

    respond_to do |format|
      format.html { redirect_to(order_line_items_url(@order)) }
      format.xml  { head :ok }
    end
  end
  
private
  def get_order
    @order = Order.find(params[:order_id])
  end  
  
end
