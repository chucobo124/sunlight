class ProductSheetsController < ApplicationController
	def index
		@productsheets = ProductSheet.all
	end
	def show
		@productsheet = ProductSheet.all
	end
	def new
		@productsheet = ProductSheet.new
	end  
	def create
		@productsheet = ProductSheet.new(product_sheet_params) 
		@productsheet.save
		redirect_to product_sheets_path
	end
	def update
		@productsheet = ProductSheet.find(params[:id])
		
		@productsheet.update(product_sheet_params)
		redirect_to product_sheets_path
	end
	def edit
		@productsheet = ProductSheet.find(params[:id]) 
	end
	def destroy
		@productsheet = ProductSheet.find(params[:id])
		@productsheet.destroy
		redirect_to product_sheets_path
	end
	private
		def product_sheet_params
			params.require(:product_sheet).permit(:product_name,:set_price,:remark,:product_class)
		end 
end
