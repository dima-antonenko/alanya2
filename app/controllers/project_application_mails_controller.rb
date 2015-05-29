class ProjectApplicationMailsController < ApplicationController
  before_action :set_project_application_mail, only: [:show, :edit, :update, :destroy]

  # GET /project_application_mails
  # GET /project_application_mails.json
  def index
    @project_application_mails = ProjectApplicationMail.all
  end

  # GET /project_application_mails/1
  # GET /project_application_mails/1.json
  def show
  end

  # GET /project_application_mails/new
  def new
    @project_application_mail = ProjectApplicationMail.new
  end

  # GET /project_application_mails/1/edit
  def edit
  end

  # POST /project_application_mails
  # POST /project_application_mails.json
  def create
    @project = Project.find(params[:project_id])
    @project_application_mail = @project.project_application_mails.create( project_application_mail_params )

    
      if @project.project_application_mails.create( project_application_mail_params )
        redirect_to :back, notice: 'Ваш запрос отправлен, спасибо!'
      end
  end

  # PATCH/PUT /project_application_mails/1
  # PATCH/PUT /project_application_mails/1.json
  def update
    respond_to do |format|
      if @project_application_mail.update(project_application_mail_params)
        format.html { redirect_to @project_application_mail, notice: 'Project application mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_application_mail }
      else
        format.html { render :edit }
        format.json { render json: @project_application_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_application_mails/1
  # DELETE /project_application_mails/1.json
  def destroy
    @project_application_mail.destroy
    respond_to do |format|
      format.html { redirect_to project_application_mails_url, notice: 'Project application mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project_application_mail
    @project_application_mail = ProjectApplicationMail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_application_mail_params
    params[:project_application_mail].permit(:project_id, :name, :email)
  end
end
