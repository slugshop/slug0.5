class OnLoansController < ApplicationController
  # GET /on_loans
  # GET /on_loans.json
  def index
    @on_loans = OnLoan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @on_loans }
    end
  end

  # GET /on_loans/1
  # GET /on_loans/1.json
  def show
    @on_loan = OnLoan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @on_loan }
    end
  end

  # GET /on_loans/new
  # GET /on_loans/new.json
  def new
    @on_loan = OnLoan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @on_loan }
    end
  end

  # GET /on_loans/1/edit
  def edit
    @on_loan = OnLoan.find(params[:id])
  end

  # POST /on_loans
  # POST /on_loans.json
  def create
    @on_loan = OnLoan.new(params[:on_loan])

    respond_to do |format|
      if @on_loan.save
        format.html { redirect_to @on_loan, notice: 'On loan was successfully created.' }
        format.json { render json: @on_loan, status: :created, location: @on_loan }
      else
        format.html { render action: "new" }
        format.json { render json: @on_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /on_loans/1
  # PUT /on_loans/1.json
  def update
    @on_loan = OnLoan.find(params[:id])

    respond_to do |format|
      if @on_loan.update_attributes(params[:on_loan])
        format.html { redirect_to @on_loan, notice: 'On loan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @on_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_loans/1
  # DELETE /on_loans/1.json
  def destroy
    @on_loan = OnLoan.find(params[:id])
    @on_loan.destroy

    respond_to do |format|
      format.html { redirect_to on_loans_url }
      format.json { head :no_content }
    end
  end
end
