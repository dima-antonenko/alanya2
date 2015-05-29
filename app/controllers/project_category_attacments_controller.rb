class ProjectCategoryAttacmentsController < ApplicationController
  before_action :set_project_category_attacment, only: [:show, :edit, :update, :destroy]

  # GET /project_category_attacments
  # GET /project_category_attacments.json
  def index
    @project_category_attacments = ProjectCategoryAttacment.all
  end

  # GET /project_category_attacments/1
  # GET /project_category_attacments/1.json
  def show
  end

  # GET /project_category_attacments/new
  def new
    @project_category_attacment = ProjectCategoryAttacment.new
  end

  # GET /project_category_attacments/1/edit
  def edit
  end

  # POST /project_category_attacments
  # POST /project_category_attacments.json
  def create
    @project_category_attacment = ProjectCategoryAttacment.new(project_category_attacment_params)

    respond_to do |format|
      if @project_category_attacment.save
        format.html { redirect_to @project_category_attacment, notice: 'Project attacment was successfully created.' }
        format.json { render :show, status: :created, location: @project_category_attacment }
      else
        format.html { render :new }
        format.json { render json: @project_category_attacment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_category_attacments/1
  # PATCH/PUT /project_category_attacments/1.json
  def update
    respond_to do |format|
      if @project_category_attacment.update(project_category_attacment_params)
        format.html { redirect_to @project_category_attacment, notice: 'Project attacment was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_category_attacment }
      else
        format.html { render :edit }
        format.json { render json: @project_category_attacment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_category_attacments/1
  # DELETE /project_category_attacments/1.json
  def destroy
    @project_category_attacment.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Информация обновлена' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_category_attacment
      @project_category_attacment = ProjectCategoryAttacment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_category_attacment_params
      params[:project_category_attacment]
    end
end
