class CompaniesController < ApplicationController
  def index
    @companies = Company.all.order(created_at: :desc)
  end

  def show
  end

  def new
     @company = Company.new
  end

  def create
      @company = Company.new(company_params)

       if @company.save
         redirect_to companies_path, notice: "created and saved sucusessfully"
       else
         redirect_to new_company_path, notice: "failed"
       end
  end

  def edit
  end

  def update
  end

    private
    def company_params
      params.require(:company).permit(:company_name, :industry)
    end

    def set_student
      @company = Company.find(params[:id])
    end


end
