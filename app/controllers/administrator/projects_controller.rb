class Administrator::ProjectsController < AdministratorController

  before_action :set_project, only: [:edit, :update, :destroy, :delete]


  def index
    @projects = Project.paginate(:page => params[:page], :per_page => 10)
    render 'administrator/projects/index'
  end

  def edit
    @project = Project.find(params[:id])
    @project_attachments = ProjectAttacment.where(project_id: @project.id)
  end

  # GET /projects/new
  def new
    @project = Project.new
    #@project_attachment = @project.project_attachments.build
  end



  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    @project.assign_attributes(project_params)

    if params[:project][:some_manager]
      ManagersProject.create!(project_id: @project.id, manager_id: @project.some_manager )
    end

    respond_to do |format|
      if @project.save

        if params[:images] != nil
          params[:images].each do |image|
            ProjectAttacment.create(project_id: @project.id, image: image)
          end
        end
        format.html { redirect_to edit_administrator_project_path(@project) , notice: 'Проект добавлен' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find(params[:id])
    @project.assign_attributes(project_params)

    if params[:project][:some_manager]
      ManagersProject.create!(project_id: @project.id, manager_id: @project.some_manager )
    end  

    unless @project.valid?
      Rails.logger.debug @project.errors.full_messages
    end

    respond_to do |format|
      if @project.save
        if params[:images] != nil
          params[:images].each do |image|
            ProjectAttacment.create(project_id: @project.id, image: image)
          end
        end

        format.html { redirect_to :back , notice: 'Информация обновлена' }
        format.json { render :index, status: :ok, location: @project }
      else
        format.html { render :update }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Проект удален' }
      format.json { head :no_content }
    end
  end

  private

  def project_params
    params.require(:project).permit(:description, :meta_title, :meta_description, :meta_keywords, :avatar, :project_category_id,
                                    :name, :sku, :start_price, :final_price, :type_deal, :rooms, :area, :condition, :to_center, :mount_build, :year_build, :has_conditioning, :has_white_goods, :has_furniture,
                                    :has_water_heater, :has_tapu, :has_iskana, :type_object, :to_airport, :project_attachments_attributes, :has_conditioning, :some_manager)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end
