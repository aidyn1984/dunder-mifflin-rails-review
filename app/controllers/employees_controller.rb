class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show 
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee.id)
    end 

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employees_path
    end 

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url)
    end

end
